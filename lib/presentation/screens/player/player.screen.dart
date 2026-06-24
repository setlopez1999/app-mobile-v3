import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:floating/floating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chrome_cast/lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supercontext/supercontext.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/entities/category.entity.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/domain/entities/epg.entity.dart';
import 'package:tvapp/domain/repositories/brightness.repository.dart';
import 'package:tvapp/domain/repositories/channels.repository.dart';
import 'package:tvapp/presentation/providers/selected_category.provider.dart';
import 'package:tvapp/presentation/screens/player/widgets/sidebar_button_channel.dart';
import 'package:tvapp/presentation/widgets/base_button_channel.dart';
import 'package:tvapp/presentation/widgets/google_text_span.widget.dart';
import 'package:tvapp/providers/channels.state.dart';
import 'package:tvapp/providers/epg.state.dart';
import 'package:tvapp/providers/index.state.dart';
import 'package:tvapp/storage/secure_storage.dart';
import 'package:tvapp/widgets/google_text.widget.dart';
import 'package:video_player/video_player.dart';
import 'package:volume_controller/volume_controller.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class PlayerScreen extends ConsumerStatefulWidget {
  const PlayerScreen({
    super.key,
    required this.channel,
    required this.channels,
    this.categoryId = '',
  });

  final Channel channel;
  final List<Channel> channels;
  final String categoryId;
  
  static String path = '/player';
  static String name = 'player';

  @override
  ConsumerState<ConsumerStatefulWidget> createState()=>_PlayerScreenState();
}

class _PlayerScreenState extends ConsumerState<PlayerScreen>{
  SharedPreferences? _prefs;
  bool isAndroidDevice = Platform.isAndroid;
  double _illumination = 1;
  double _volume = 0;
  bool showAllControls = false;
  bool showInfoChannel = false;
  bool showChromecastSelector = false;
  bool showSidebarchannels = false;
  bool showSidebarCatchUp = false;

  bool _isFavoriteChannel = false;

  Timer? _timerHideInfo;
  String _currentCategory = '';

  late VideoPlayerController _videoController;
  Timer? _timerSessionCast;

  List<Channel> channels = [];
  Channel? channelPlaying;

  Timer _rating = Timer(Duration.zero, () {});
  Timer _checkUserEnabled = Timer(Duration.zero, () {});

  late Floating pip;
  bool isPipAvailable = false;
  bool _pipActivated = false;

  bool playingSinceCatchUp = false;

  GoogleCastConnectState castConnectionState = GoogleCastConnectState.disconnected;
  CastMediaPlayerState castPlayerState = CastMediaPlayerState.unknown;

  @override
  void initState() {
    WakelockPlus.enable();
    SharedPreferences.getInstance().then((prefs) => _prefs = prefs);
    super.initState();
    _initSettings();

    if (widget.categoryId.isNotEmpty){
      _currentCategory = widget.categoryId;
    }
    /* if (widget.categoryId.isEmpty) {
      _getFirstCategoryIDFromIndexProvider();
    }else{
      _currentCategory = widget.categoryId;
    } */

    _playVideo();
    _setLastView();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _periodicallyCheckUserEnabled();
      _periodicallyValidateVideoLinks();
      _getFirstCategoryIDFromIndexProvider();

      if(Platform.isAndroid) {
        initPlatformState();
        listenToChromecastEvents();
      }

    });

    if (isAndroidDevice) {
      pip = Floating();
      _checkPiPAvailability();
    }
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    WakelockPlus.disable();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    _videoController.dispose();
    GoogleCastSessionManager.instance.endSession();
    _rating.cancel();
    _timerHideInfo?.cancel();
    _checkUserEnabled.cancel();
    VolumeController().removeListener();
  }

  void initPlatformState() {
    const appId = GoogleCastDiscoveryCriteria.kDefaultApplicationId;
    GoogleCastOptions? options;
    if (Platform.isIOS) {
      options = IOSGoogleCastOptions(
        GoogleCastDiscoveryCriteriaInitialize.initWithApplicationID(appId),
      );
    } else if (Platform.isAndroid) {
      options = GoogleCastOptionsAndroid(
        appId: appId,
      );
    }
    GoogleCastContext.instance.setSharedInstanceWithOptions(options!);
  }

  void _getFirstCategoryIDFromIndexProvider(){
    ref.read(indexStateProvider).when(
        data: (data) {
          if(_currentCategory.isEmpty) {
            final categoryId = data.categories.first.id;
            setState(() {
              _currentCategory = categoryId.toString();
            });

            ref.read(selectedCategoryProvider.notifier).value(categoryId);
            ref.read(channelsProvider.notifier).getFromCategory(categoryId);
          }
        },
        error: (err, stack) {},
        loading: () {}
    );

    // Verifica si el estado ya tiene dato
  }

  void _initSettings(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    VolumeController().listener((volume)=>setState(() => _volume = volume));

    BrightnessRepository().loadBrightness().then((value) {
      ScreenBrightness.instance.setApplicationScreenBrightness(value);
      setState(()=> _illumination = value);
    });
  }

  void _periodicallyValidateVideoLinks(){
    _rating = Timer.periodic(const Duration(seconds: 15), (timer) async {
      if (channelPlaying == null) {
        return;
      }

      if (playingSinceCatchUp) {
        return;
      }

      _reloadLink();
    });
  }

  Future<void> _reloadLink() async {
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStorage.get('token');
    final channelLive = await ChannelsRepository().getChannelWithStream(
      token!,
      channel: channelPlaying!,
    );

    if (channelPlaying?.streamLink != channelLive.streamLink) {
      await changeVideo(channelLive);
    }
  }

  void _periodicallyCheckUserEnabled(){
    _checkUserEnabled = Timer.periodic(const Duration(minutes: 1), (_)=> ref.read(indexStateProvider.notifier).reload());
  }

  void _playVideo(){
    _videoController = VideoPlayerController.networkUrl(Uri.parse(widget.channel.streamLink!), httpHeaders: {
      'User-Agent': Platform.isAndroid ? 'APPMOVIL-${_prefs?.getString("deviceID") ?? ''}' : 'APPMOVILIOS-${_prefs?.getString("deviceID") ?? ''}',
    })
    ..initialize().then((_){
      setState(() {
        setState(() {
          channels = widget.channels;
          channelPlaying = widget.channel;
          _currentCategory = widget.categoryId;
          _isFavoriteChannel = widget.channel.isFavorite;
        });
      });
    }) 
    ..play();
  }

  void _scheduleHideInfo() {
    _timerHideInfo?.cancel();
    
    _timerHideInfo = Timer(const Duration(seconds: 10), () {
      if (mounted) {
        setState(() {
          showAllControls = false;
          showInfoChannel = false;
          showSidebarchannels = false;
          showSidebarCatchUp = false;
        });
      }
    });
  }

  void _toggleInfoVisibility() {
    setState(() {
      showAllControls = !showAllControls;

      if (showSidebarchannels) {
        showSidebarchannels = false;
      }
      if (showSidebarCatchUp) {
        showSidebarCatchUp = false;
      }
    });
  }

  Future<void> changeVideo(Channel newChannel) async {
    if (newChannel.streamLink == null || newChannel.streamLink!.isEmpty) {
      return;
    }
    
    if(mounted) {
      setState(()=> channelPlaying = newChannel);
    }

    if(castConnectionState == GoogleCastConnectState.connected) {
      await _videoController.pause();
      await launchPlayingOnChromeCast();
      return;
    }

    try {

      // Elimina el controlador anterior para liberar recursos
      await _videoController.dispose();

      _videoController = VideoPlayerController.networkUrl(
        Uri.parse(newChannel.streamLink!),
        httpHeaders: {
          'User-Agent': Platform.isAndroid ? 'APPMOVIL-${_prefs?.getString("deviceID") ?? ''}' : 'APPMOVILIOS-${_prefs?.getString("deviceID") ?? ''}',
        },
      );

      await _videoController.initialize();
      await _videoController.play();

      await WakelockPlus.enable();

      // Verifica si el widget sigue montado antes de actualizar el estado
      if (mounted) {
        setState(() {});
      }
    } catch (e) {
      _reloadLink();
      print("Error al reproducir el video: $e");
    }
  }

  Future<void> _setLastView() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('lastView', jsonEncode(widget.channel.toJson()));
  }

  Future<void> playFromSidebarChannels(Channel channel) async {
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStorage.get('token')!;
    final channelLive = await ChannelsRepository().getChannelWithStream(token, channel: channel);
    setState(() {
      channelPlaying = channelLive;
      _isFavoriteChannel = channelLive.isFavorite;
    });

    await changeVideo(channelLive);
  }

  Future<void> _checkPiPAvailability() async {
    isPipAvailable = await pip.isPipAvailable; // Checking if PiP mode is available on the device
    setState(() {}); // Triggering a UI update based on the PiP availability status
  }

  Future<void> _activatePiP() async {
    if (isAndroidDevice) {
      try {
        _pipActivated = true; // Para evitar llamadas múltiples
        await pip.enable(const ImmediatePiP());
      } catch (e) {
        _pipActivated = false;
      }
    }
  }

  String checkTimeStatus(EpgEntity epg) {
  final int currentTimestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

  if (currentTimestamp < epg.fechaIni) {
    return 'no-inicia';
  } else if (currentTimestamp > epg.fechaFin) {
    return 'termino';
  } else {
    return 'reproduciendo';
  }
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      right: false,
      left: false,
      child: Scaffold(
        body: isAndroidDevice? 
          PiPSwitcher(
            childWhenDisabled: _screenVideoPlayer(), 
            childWhenEnabled: AspectRatio(
              aspectRatio: _videoController.value.aspectRatio,
              child: VideoPlayer(_videoController),
          )) : 
          _screenVideoPlayer()
      )
    );
  }

  Widget _screenVideoPlayer(){
    return Listener(
      onPointerDown: (_)=>_scheduleHideInfo(),
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (_videoController.value.isInitialized)
            AspectRatio(aspectRatio: _videoController.value.aspectRatio, child: VideoPlayer(_videoController),
          ),
          Positioned.fill(child:
            AnimatedOpacity(
              opacity: showAllControls ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: showAllControls ?
                MaterialButton(
                  animationDuration: Duration.zero,
                  onPressed: _toggleInfoVisibility,
                  elevation: 0,
                  color: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: SafeArea(
                    right: false,
                    left: false,
                    top: false,
                    child: Padding(
                    padding: EdgeInsets.only(left: Platform.isAndroid ? 3 : 25, right: 3),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _appBar(),
                      _middleBar(),
                      _bottomBar()
                    ],
                    ),
                  ),),)
                :
                GestureDetector(
                  onTap: _toggleInfoVisibility,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
            )
          ),
          _sidebarChannels(),
          if(showSidebarCatchUp)
            _sidebarCatchUp(),
          if (showInfoChannel)
            _infoChannel(),
          if(showChromecastSelector)
            _chromecastSelector()
        ],
      ),
    );
  }

  Widget _appBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: context.pop,
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 32,
          ),
        ),
        Row(children: [
          if (Platform.isAndroid)
            IconButton(
              onPressed: () async {
                if (isPipAvailable) {
                  _activatePiP();
                }
              },
              icon: const Icon(Icons.picture_in_picture_alt, color: Colors.white,),
            ),
          _chromecastButton()
        ],
      )
    ]);
  }

  Widget _middleBar(){
    final asyncInfoProvider = ref.watch(indexStateProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _brightnessSlider(),
        Row(
          children: [
            IconButton(
              onPressed: () async {
                if (asyncInfoProvider.value.isNotNull && channels.isNotEmpty) {
                  int channelIndex = channels.indexWhere((channel) => channel.number == channelPlaying!.number);

                  if (channelIndex <= 0) {
                    channelIndex = channels.length;
                  }
                  final channelToPlay = channels[channelIndex - 1];
                  
                  playingSinceCatchUp = false;
                  await playFromSidebarChannels(channelToPlay);
                }
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                size: 42,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 32),
            IconButton(
              onPressed: () async {
                setState(() {
                  showInfoChannel = true;
                  showAllControls = false;
                  showSidebarchannels = false;
                });
              },
              icon: const Icon(
                Icons.info_outline_rounded,
                size: 42,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 32),
            IconButton(
              onPressed: () async {
                if (asyncInfoProvider.value.toString().isNotNull && channels.isNotEmpty) {
                  int channelIndex = channels.indexWhere((channel) => channel.number == channelPlaying!.number);

                  if (channelIndex == (channels.length - 1)) {
                    channelIndex = -1;
                  }
                  final channelToPlay = channels[channelIndex + 1];

                  playingSinceCatchUp = false;
                  await playFromSidebarChannels(channelToPlay);
                }
              },
              icon: const Icon(
                Icons.arrow_forward_rounded,
                size: 42,
                color: Colors.white,
              ),
            ),
          ],
        ),
        _volumeSlider()
    ],);
  }

  Widget _bottomBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton.icon(
          onPressed: () {
            setState(() {
              showSidebarchannels = true;
              showInfoChannel = false;
            });
          },
        icon: const Icon(
          Icons.menu_rounded,
          color: Colors.white,
          size: 32,
        ),
        label: const GoogleTextWidget(
          'Lista de canales',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        ),
        IconButton(
          onPressed: () async {
            if (mounted) {
              setState(()=> _isFavoriteChannel = !_isFavoriteChannel);
              await BaseButtonChannel.toggleFavorite(channelPlaying!, _currentCategory, ref);
              await ref.read(channelsProvider.notifier).reload(_currentCategory);
            }
          },
          icon: Icon(
            _isFavoriteChannel ? Icons.favorite_rounded : Icons.favorite_outline_rounded,
            color: AppTheme.secondaryColor(context),
            size: 32,
          ),
        ),
        TextButton.icon(
          onPressed: () {
            if (channelPlaying?.catchup == true) {
              setState(() {
                showSidebarCatchUp = true;
              });
            }
          },
        icon: Icon(
          Icons.replay,
          color: (channelPlaying?.catchup == true) ? Colors.white : Colors.grey,
          size: 28,
        ),
        label: GoogleTextWidget(
          'Catch up',
          style: TextStyle(fontWeight: FontWeight.w700, color: (channelPlaying?.catchup == true) ? Colors.white : Colors.grey,),
        ),
      ),
    ],);
  }

  Widget _brightnessSlider(){
    return Column(children: [
      const Icon(
        Icons.sunny,
        color: Colors.white,
        size: 24,
      ),
      Container(
        height: 200,
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: RotatedBox(
          quarterTurns: -1,
          child: Slider(value: _illumination, 
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            thumbColor: Colors.transparent,
            onChanged: (double value) async {
              if (mounted) {
                await ScreenBrightness.instance.setApplicationScreenBrightness(value);
                await BrightnessRepository().saveBrightness(value);
                setState(() {
                    _illumination = value;
                });
              }
            }
          ),
        ),
      )
    ],);
  }

  Widget _volumeSlider(){
    return Column(
      children: [
        Icon( _volume >= 0.1 ? Icons.volume_up : _volume == 0.0 ? Icons.volume_off_rounded : Icons.volume_down,
          color: Colors.white,
        ),
        Container(
          height: 200,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: RotatedBox(
            quarterTurns: -1,
            child: Slider(
              value: _volume,
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              thumbColor: Colors.transparent,
              onChanged: (double value) {
                VolumeController().showSystemUI = false;
                setState(() {
                  _volume = value;
                  VolumeController().setVolume(_volume);
                  // showInfo = true;
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _sidebarChannels(){
    final asyncInfoProvider = ref.watch(indexStateProvider);
    final asyncChannels = ref.watch(channelsProvider);
    
    return AnimatedPositioned(
      top: 0,
      left: 0,
      bottom: 0,
      width: showSidebarchannels ? 300 : 0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOutCubic,
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: asyncInfoProvider.when(
          data: (info) {
            final CategoryEntity category = _currentCategory.isEmpty
                ? info.categories.first
                : info.categories
                    .where((item) => item.id == _currentCategory)
                    .first;

            final index = info.categories.indexOf(category);
            final last = info.categories.length - 1;

            return AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: const Color(0xFF1C1C1C),
                flexibleSpace: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _currentCategory = index > 0
                                ? info.categories[index - 1].id
                                : info.categories.last.id;
                            ref
                                .read(selectedCategoryProvider.notifier)
                                .value(_currentCategory);
                            ref
                                .read(channelsProvider.notifier)
                                .getFromCategory(_currentCategory);
                          });
                        },
                        icon: const Icon(Icons.arrow_back, color: Colors.white,),
                      ),
                      Expanded(child: Text(category.name, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 16),)),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _currentCategory = index < last
                                ? info.categories[index + 1].id
                                : info.categories.first.id;
                            ref
                                .read(selectedCategoryProvider.notifier)
                                .value(_currentCategory);
                            ref
                                .read(channelsProvider.notifier)
                                .getFromCategory(_currentCategory);
                          });
                        },
                        icon: const Icon(Icons.arrow_forward, color: Colors.white,),
                      ),
                    ],
                  ),
                ),
                iconTheme: const IconThemeData(
                  color: Colors.white,
                ),
                titleTextStyle: googleStyle(context).merge(
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
          },
          error: (error, stackTrace) {
            return AppBar(
              centerTitle: true,
              title: const Text('¡Error!'),
            );
          },
          loading: () => AppBar(
            title: CircularProgressIndicator(
              color: AppTheme.secondaryColor(context),
            ),
          ),
        ),
        body: asyncChannels.when(
          data: (lstChannels) {
            // Si viene vacio de favoritos
            if (lstChannels.isEmpty) {
              if (_currentCategory.isNotEmpty) {
                Future.microtask(() async {
                    await ref.read(channelsProvider.notifier).getFromCategory(_currentCategory);
                });
              }else{
                final asyncInfo = ref.read(indexStateProvider);
                if (asyncInfo is AsyncData) {
                  final categoryId = asyncInfo.value?.categories.first.id;
                  Future.microtask(() {
                      ref.read(channelsProvider.notifier).getFromCategory(categoryId!);
                  });
                }
              }
            }
            setState(() {
              channels = lstChannels;
            });

            return showSidebarchannels
                ? ListView.builder(
                    itemCount: lstChannels.length,
                    itemBuilder: (context, index) {
                      final channel = lstChannels[index];
                      return SidebarButtonChannel(
                        channel: channel,
                        onTap: () async {
                          ref.read(selectedCategoryProvider.notifier).value(_currentCategory);

                          if (channel.adulto) {
                            final isValid = await BaseButtonChannel
                                .validateAdultPassword(context, ref);
                            if (isValid == null || !isValid) {
                              return;
                            }
                          }

                          await playFromSidebarChannels(channel);
                          setState(()=>showSidebarchannels = false);
                        });
                    },
                  )
                : const SizedBox.shrink();
          },
          error: (error, stackTrace) {
            return AppBar(
              centerTitle: true,
              title: const Text('¡Error!'),
            );
          },
          loading: () => Center(
            child: CircularProgressIndicator(
              color: AppTheme.secondaryColor(context),
            ),
          ),
        ),
      ));
  }

  Widget _sidebarCatchUp(){
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStorage.get('token');
    
    return AnimatedPositioned(
      top: 0,
      right: 0,
      bottom: 0,
      width: showSidebarCatchUp ? 300 : 0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOutCubic,
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: FutureBuilder(
          future: ChannelsRepository().getChannelWithStream(token!, channel: channelPlaying!), 
          builder: (ctx, snapshot){
            if (snapshot.hasData) {
              final schedule = snapshot.data;

              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: schedule?.epg.length,
                itemBuilder: (BuildContext context, int index) { 
                  final scheduleItem = schedule?.epg[index];
                  final startTime = DateFormat('HH:mm').format(DateTime.fromMillisecondsSinceEpoch(scheduleItem!.fechaIni * 1000));
                  final endTime = DateFormat('HH:mm').format(DateTime.fromMillisecondsSinceEpoch(scheduleItem.fechaFin * 1000));

                  final statusSchedule = checkTimeStatus(scheduleItem);
                  Color? backgroundColorBtn = Colors.green;
                  String textBtn = 'Notifícame';
                  IconData? iconBtn = Icons.notifications_none;

                  if (statusSchedule == 'termino') {
                    backgroundColorBtn = Colors.white;
                    textBtn = 'Volver a ver';
                    iconBtn = Icons.smart_display_outlined;
                  }
                  if (statusSchedule == 'reproduciendo') {
                    backgroundColorBtn = Colors.red;
                    textBtn = 'En vivo';
                    iconBtn = Icons.circle;
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(scheduleItem.titulo, style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),),
                            Padding(
                              padding: const EdgeInsets.only(top: 2, bottom: 5),
                              child: Text('$startTime - $endTime hrs', style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                            ),
                            SizedBox(
                              height: 20,
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  if (statusSchedule == 'termino' || statusSchedule == 'reproduciendo') {
                                    final linkCatchUp = channelPlaying!.streamLink.toString().split('.m3u8');
                                    final linkToPlay = '${linkCatchUp[0]}_dvr_range-${scheduleItem.fechaIni}-${scheduleItem.run*60}.m3u8';
                                  
                                    final channelCatchUp = channelPlaying!.copyWith(
                                      streamLink: linkToPlay
                                    );
                                    changeVideo(channelCatchUp);

                                    setState(() {
                                      showSidebarCatchUp = false;
                                      playingSinceCatchUp = true;
                                    });
                                    // print(linkToPlay);
                                  }
                                },
                                icon: Icon(
                                  iconBtn,
                                  color: (statusSchedule == 'termino') ? Colors.black : Colors.white,
                                  size: 14,
                                ),
                                label: Text(
                                  textBtn,
                                  style: TextStyle(color: (statusSchedule == 'termino') ? Colors.black : Colors.white, fontSize: 12, wordSpacing: 0.9, fontWeight: FontWeight.w700),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: backgroundColorBtn,
                                  padding: const EdgeInsets.symmetric(horizontal: 6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                      const Divider(color: Colors.grey, thickness: 1,)
                    ]),
                  );
              },);
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          })
      ));
  }

  Widget _createEpgItem(String label, EpgEntity? epg) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GoogleTextWidget(
            label,
            style: const TextStyle(
              fontSize: 12,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
            maxLines: 2,
          ),
          const SizedBox(height: 4),
          GoogleTextWidget(
            epg != null
                ? epg.titulo
                : 'Programación de ${channelPlaying?.title ?? widget.channel.title}',
            style: const TextStyle(
              fontSize: 12,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.left,
            maxLines: 2,
          ),
          const SizedBox(height: 4),
          _createProgressBar(context, epg),
          const SizedBox(height: 2),
          if (epg != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GoogleTextWidget(
                  DateFormat('HH:mm').format(
                    DateTime.fromMillisecondsSinceEpoch(
                      epg.fechaIni * 1000,
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                GoogleTextWidget(
                  DateFormat('HH:mm').format(
                    DateTime.fromMillisecondsSinceEpoch(
                      epg.fechaFin * 1000,
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            )
          else
            const GoogleTextWidget('', style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _infoChannel(){
    final epgChannels = ref.watch(epgStateProvider);

    final epg = epgChannels.value
      ?.where((channel) {
        final currentChannel = channelPlaying ?? widget.channel;
        return channel.numero == currentChannel.number;
      })
      .firstOrNull
      ?.epg
      .where((epg) {
        final ini = epg.fechaIni * 1000;
        final fin = epg.fechaFin * 1000;
        final now = DateTime.now().millisecondsSinceEpoch;
        return (now >= ini && now <= fin) || now < ini;
      })
      .toList() ?? [];
    
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: SafeArea(
        top: false,
        right: false,
        left: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(
            toolbarHeight: 82,
            backgroundColor: Colors.black54,
            leading: IconButton(
              onPressed: () {
                setState(()=> showInfoChannel = false);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: GoogleTextWidget(
                    (channelPlaying?.number ?? widget.channel.number)
                        .toString(),
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 64,
                  height: 64,
                  child: CachedNetworkImage(
                    imageUrl: channelPlaying?.card ?? widget.channel.card,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: _createEpgItem('AHORA', epg.elementAtOrNull(0)),
                      ),
                      Expanded(
                        child: _createEpgItem('PRÓXIMO', epg.elementAtOrNull(1)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: InkWell(
            onTap: () {
              setState(()=> showInfoChannel = false);
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              color: Colors.transparent,
              child: const SizedBox.expand(),
            ),
          ),
          bottomNavigationBar: Container(
            color: Colors.black54,
            height: 110,
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GoogleTextWidget(
                        channelPlaying?.title ?? widget.channel.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white60,
                        ),
                      ),
                      GoogleTextWidget(
                        channelPlaying?.description ?? widget.channel.description,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/brand/logo.png', width: 64, height: 64),
              ],
            ),
          ),
        
        ),
      ),
    );
  }

  LayoutBuilder _createProgressBar(BuildContext context, EpgEntity? epg) {
    double progress = 0;

    if (epg != null) {
      final now = DateTime.now().millisecondsSinceEpoch;
      final start = epg.fechaIni * 1000;
      final end = epg.fechaFin * 1000;

      final totalProgram = end - start;
      final timeElapsedFromStart = now - start;
      progress = timeElapsedFromStart / totalProgram;

      if (progress < 0) {
        progress = 0;
      }
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final lineWidth = constraints.maxWidth * progress;
        return Stack(
          children: [
            SizedBox(
              height: 8,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(
              height: 8,
              width: lineWidth,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.secondaryColor(context)),
              ),
            )
          ],
        );
      },
    );
  }


/**
 * CHROMECAST
 */


  Widget _chromecastButton(){
    if (!Platform.isAndroid) {
      return const SizedBox();
    }


    return StreamBuilder<GoogleCastSession?>(
        stream: GoogleCastSessionManager.instance.currentSessionStream,
        builder: (context, snapshot) {

          Future.microtask((){
            setState(() {
              castConnectionState = GoogleCastSessionManager.instance.connectionState;
            });
          });

          final bool isConnected = GoogleCastSessionManager.instance.connectionState == GoogleCastConnectState.connected;
          return IconButton(onPressed: () async {

            if(isConnected) {
              GoogleCastSessionManager.instance.endSession();
              await resumeMainPlayer();
              return;
            }

            await GoogleCastDiscoveryManager.instance.startDiscovery();
            setState(() {
              showChromecastSelector = true;
              showInfoChannel = false;
              showAllControls = false;
              showSidebarchannels = false;
            });
          }, icon: Icon(isConnected ? Icons.cast_connected : Icons.cast, color: Colors.white));
        });

  }

  Widget _chromecastSelector() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: SafeArea(
        top: false,
        right: false,
        left: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: InkWell(
            onTap: () {
              GoogleCastDiscoveryManager.instance.stopDiscovery();
              setState(()=> showChromecastSelector = false);
            },
            child: Center(
              child: SizedBox(
                height: 250,
                width: 300,
                child: StreamBuilder<List<GoogleCastDevice>>(
                  stream: GoogleCastDiscoveryManager.instance.devicesStream,
                  builder: (context, snapshot) {
                    final devices = snapshot.data ?? [];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  TextButton(onPressed: (){}, child: const Text('Selecciona un dispositivo', style: TextStyle(color: Colors.white))),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: ListView(
                                        children: [
                                          ...devices.map((device) {
                                            return ListTile(
                                              title: Text(device.friendlyName, style: const TextStyle(color: Colors.white)),
                                              subtitle: Text(device.modelName ?? '', style: const TextStyle(color: Colors.white)),
                                              onTap: () => connectToChromecastDevice(device),
                                            );
                                          }),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(onPressed: (){
                                    GoogleCastDiscoveryManager.instance.stopDiscovery();
                                    setState(()=> showChromecastSelector = false);
                                  }, child: const Text('Cerrar', style: TextStyle(color: Colors.white))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> connectToChromecastDevice(GoogleCastDevice device) async {
    setState(() {
      showChromecastSelector = false;
    });

    await GoogleCastSessionManager.instance.startSessionWithDevice(device);

    await GoogleCastSessionManager.instance.currentSessionStream.firstWhere((conn) => conn?.connectionState == GoogleCastConnectState.connected);

    await GoogleCastDiscoveryManager.instance.stopDiscovery();
    stopMainPlayer();
    await launchPlayingOnChromeCast();
  }

  Future<void> launchPlayingOnChromeCast() async {
    final secureStorage = ref.read(secureStorageProvider).requireValue;
    final token = secureStorage.get('token')!;
    final channelLive = await ChannelsRepository().getChannelWithStream(token, channel: channelPlaying!);

    await GoogleCastRemoteMediaClient.instance.queueLoadItems(
      [
        GoogleCastQueueItem(
          mediaInformation: GoogleCastMediaInformationAndroid(
            contentId: channelLive.number.toString(),
            streamType: CastMediaStreamType.live,
            contentUrl: Uri.parse(channelLive.streamLink!),
            contentType: 'application/x-mpegurl',
            metadata: GoogleCastMovieMediaMetadata(
              title: channelLive.title,
              releaseDate: DateTime.now(),
              studio: channelLive.studio.toString(),
              images: [
                GoogleCastImage(
                  url: Uri.parse(channelLive.card),
                  height: 480,
                  width: 854,
                ),
              ],
            ),
          ),
        ),
      ],
      options: GoogleCastQueueLoadOptions(),
    );
  }

  void listenToChromecastEvents(){
    GoogleCastRemoteMediaClient.instance.mediaStatusStream.listen((event) {
      if(event?.playerState != null) {
        setState(() {
          castPlayerState = event!.playerState;
        });
      }
    });

    GoogleCastSessionManager.instance.currentSessionStream.listen((event) {
      if(event?.connectionState != null) {
        setState(() {
          castConnectionState = event!.connectionState;
        });
      }
    });
  }

  void stopMainPlayer() {
    _videoController.pause();
  }

  Future<void> resumeMainPlayer() async {
    await _videoController.dispose();
    _videoController = VideoPlayerController.networkUrl(
      Uri.parse(channelPlaying!.streamLink!),
      httpHeaders: {
        'User-Agent': Platform.isAndroid ? 'APPMOVIL-${_prefs?.getString("deviceID") ?? ''}' : 'APPMOVILIOS-${_prefs?.getString("deviceID") ?? ''}',
      },
    );

    await _videoController.initialize();
    await _videoController.play();

    if (mounted) {
      setState(() {});
    }
  }


}