import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/domain/repositories/channels.repository.dart';
import 'package:tvapp/presentation/providers/selected_category.provider.dart';
import 'package:tvapp/presentation/screens/player/player.screen.dart';
import 'package:tvapp/providers/search.state.dart';
import 'package:tvapp/providers/search_favorites.state.dart';
import 'package:tvapp/storage/secure_storage.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

import '../../../widgets/base_button_channel.dart';



class SearchFavoritesScreen extends ConsumerStatefulWidget {
  const SearchFavoritesScreen({super.key});

  static String name = 'search favorites';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchFavoritesScreenState();
}

class _SearchFavoritesScreenState extends ConsumerState<SearchFavoritesScreen> {
  bool _hasSpeech = false;
  bool _isListening = false;
  List<Channel> _json = [];
  List<Channel>? _searchJson;
  String _text = '';
  String _currentLocaleId = '';
  List<LocaleName> _localeNames = <LocaleName>[];
  final SpeechToText _speech = SpeechToText();

  final _searchController = TextEditingController();

  /* bool _hasSpeech = false;
  bool _isListening = false;
  bool _hasLoad = false;
  List<Channel> _searchJson = [];
  String _text = '';
  String _currentLocaleId = '';
  List<LocaleName> _localeNames = <LocaleName>[];
  final SpeechToText _speech = SpeechToText();
  final _textChangeSubject = PublishSubject<String>(); */

  /* Future<void> initSpeechState() async {
    try {
      final hasSpeech = await _speech.initialize();
      if (hasSpeech) {
        _localeNames = await _speech.locales();

        final systemLocale = await _speech.systemLocale();
        _currentLocaleId = systemLocale?.localeId ?? '';
      }
      if (!mounted) {
        return;
      }

      setState(() {
        _hasSpeech = hasSpeech;
      });
    } catch (e) {
      log('Error: $e');
    }
  } */

  Future<void> initSpeechState() async {
    log('initiaize');
    try {
      final hasSpeech = await _speech.initialize();
      if (hasSpeech) {
        _localeNames = await _speech.locales();

        final systemLocale = await _speech.systemLocale();
        _currentLocaleId = systemLocale?.localeId ?? '';
      }
      if (!mounted) {
        return;
      }

      setState(() {
        _hasSpeech = hasSpeech;
      });
    } catch (e) {
      log('error on initSpeechState', error: e);
    }
  }

  @override
  void initState() {
    super.initState();
    initSpeechState();
    /* _textChangeSubject
        .debounceTime(const Duration(milliseconds: 500))
        .listen(_searchInJson); */
  }


  Future<void> _startListening() async {
    log(_hasSpeech.toString());
    if (_hasSpeech) {
      setState(() {
        _searchJson = null;
        _isListening = true;
        _text = '';
      });
      _searchController.text = '';
      await _speech.listen(
        onResult: (val) {
          setState(
            () {
              _text = val.recognizedWords;
              _searchInJson(_text);
            },
          );
          _searchController.text = val.recognizedWords;
        },
      );
    }
  }

  void _stopListening() {
    setState(() => _isListening = false);
    _speech.stop();
  }

  String normalize(String input){
    return input
      .toLowerCase()
      .replaceAll(RegExp(r'\s+'), '') //Remueve espacios
      .replaceAll('á', 'a')
      .replaceAll('é', 'e')
      .replaceAll('í', 'i')
      .replaceAll('ó', 'o')
      .replaceAll('ú', 'u');
  }

  void _searchInJson(String text) {
    setState(() {
      _searchJson = _json
          .where((json) => normalize(json.title)
              .contains(text.toLowerCase().trim()))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchableData = ref.watch(searchFavoriteStateProvider);
    return searchableData.when(
      data: (json) {
        setState(() {
          _json = json;
        });
        return Scaffold(
          appBar: customAppBar(
            context,
            title: 'Buscador',
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(64),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 2,
                    color: AppTheme.textColor(context),
                  ),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        controller: _searchController,
                        textInputAction: TextInputAction.done,
                        onChanged: (value) => {
                          _searchInJson(value)
                        },
                        decoration: InputDecoration(
                          hintText: '¿Qué canal buscas?',
                          hintStyle: TextStyle(
                            color: AppTheme.textColor(context).withOpacity(0.3),
                          ),
                          prefixIcon: _speech.isListening
                              ? Icon(
                                  Icons.graphic_eq,
                                  color: AppTheme.secondaryColor(context),
                                )
                              : null,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed:
                          _isListening ? _stopListening : _startListening,
                      icon: Icon(
                        _isListening ? Icons.stop : Icons.mic,
                        color: AppTheme.secondaryColor(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: ListView.builder(
            padding: const EdgeInsets.only(top: 16),
            itemBuilder: (BuildContext context, int index) {
              final channel = _searchJson?[index] ?? json[index];
              return Row(
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: Center(
                      child: GoogleTextWidget(
                        channel.number.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      contentPadding: const EdgeInsets.only(left: 1, right: 10),
                      onTap: () async {
                       
                        final channelSelected = channel;
                        final List<Channel> channels = json;
                        
                        final secureStorage = ref.read(secureStorageProvider).requireValue;
                        final token = secureStorage.get('token')!;
                        final channelLive = await ChannelsRepository().getChannelWithStream(
                          token,
                          channel: channelSelected,
                        );

                         print(channelLive);

                        /* final channelSelected = Channel.fromJson(channel);
                        final List<Channel> channels = json.map(Channel.fromJson).toList();
                        
                        final secureStorage = ref.read(secureStorageProvider).requireValue;
                        final token = secureStorage.get('token')!;
                        final channelLive = await ChannelsRepository().getChannelWithStream(
                          token,
                          channel: channelSelected,
                        ); */

                        if (context.mounted) {
                          ref.read(selectedCategoryProvider.notifier).value('');
                          await context.pushNamed(
                            PlayerScreen.name,
                            extra: {
                              'channel': channelLive,
                              'channels': channels,
                              'categoryId': '',
                            },
                          );
                        }
                      },
                      leading: SizedBox(
                        width: 64,
                        height: 64,
                        child: CachedNetworkImage(
                          imageUrl: channel.card,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),
                      title: GoogleTextWidget(
                        channel.title,
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: _searchJson?.length ?? json.length,
          ),
        );
      },
      error: (error, stackTrace) {
        return const Scaffold(
          body: Center(
            child: GoogleTextWidget(''),
          ),
        );
      },
      loading: () => Center(
        child: CircularProgressIndicator(
          color: AppTheme.secondaryColor(context),
        ),
      ),
    );
  }
}
