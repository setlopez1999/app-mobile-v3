import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supercontext/supercontext.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/domain/handlers/check_index.handler.dart';
import 'package:tvapp/domain/repositories/plans.repository.dart';
import 'package:tvapp/presentation/screens/home/notifications/notifications.home.screen.dart';
import 'package:tvapp/presentation/widgets/base_button_channel.dart';
import 'package:tvapp/presentation/widgets/square_button_channel.dart';
import 'package:tvapp/providers/favorite_categories.state.dart';
import 'package:tvapp/providers/favorites_channel.stage.dart';
import 'package:tvapp/providers/notifications.state.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

/// Body Widget
class BodyWidget extends ConsumerStatefulWidget {
  const BodyWidget({super.key});

  @override
  ConsumerState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends ConsumerState<BodyWidget>  with WidgetsBindingObserver{
  /// Variables
  String currentCategoryId = '';
  Channel? recommendedChannel;
  String? email;
  int lastNotificationRevision = 0;
  Timer? _timerRecommendedChannel;

  final _prefs = SharedPreferences.getInstance();
  final messaging = FirebaseMessaging.instance;

  /// Controllers
  final favoriteCategoriesItemScrollController = ItemScrollController();
  final favoriteChannelsItemScrollController = ItemScrollController();

  Future<void> _initPrefs() async {
    final prefs = await _prefs;

    final lastView = prefs.getString('lastView');
    
    final userEmail = prefs.getString('email');
   

    lastNotificationRevision = prefs.getInt('lastNotificationRevision') ?? 0;
    if (lastView.isNotNull) {
      final channelToRecommended = Channel.fromJson(
          jsonDecode(lastView!)
      );

      if (mounted) {
        final ischannelInPlan = await PlansRepository().isAValidChannelInPlan(userEmail!, channelToRecommended.studio.toString());

        print('ischannelInPlan $ischannelInPlan');
        setState(() {
          recommendedChannel = !ischannelInPlan ? null : channelToRecommended;
          email = prefs.getString('email');
        });
      }
    }
  }

  Future<void> _initNotifications() async {
    await messaging.requestPermission();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
    _initPrefs();
    _initNotifications();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _timerRecommendedChannel?.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
     if (state == AppLifecycleState.hidden) {
      _initPrefs();
     }
  }

  /// Build
  @override
  Widget build(BuildContext context) {
    final asyncFavotireCategories = ref.watch(favoriteCategoriesProvider);
    final asyncChannels = ref.watch(favoritesChannelsProvider);
    final notificationsState = ref.watch(streamNotificationsProvider(email ?? ''));
    return asyncFavotireCategories.when(
      data: (categories) {
        if (currentCategoryId.isEmpty && categories.isNotEmpty) {
          Future.delayed(const Duration(seconds: 1), () {
            if (mounted) {
              setState(() {
                currentCategoryId = categories.first.id;
              });
              ref.read(favoritesChannelsProvider.notifier).getFromCategory(
                  categories.first.id,
                );
            }
          });
        }
        return CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 278,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.zero,
                background: Stack(
                  children: [
                    Visibility(
                      visible: recommendedChannel.isNotNull,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: CachedNetworkImage(
                            imageUrl: recommendedChannel?.card ?? '',
                            fit: BoxFit.cover,
                            errorWidget: (context, url, error){
                               final uri = Uri.parse(recommendedChannel!.card);
                                final urlFormatted =  Uri(
                                  scheme: uri.scheme,
                                  host: uri.host,
                                  path: uri.path,
                                ).toString();

                              return Image.network(
                                urlFormatted,
                                errorBuilder: (context, error, stackTrace) {
                                  // Si falla, muestra un ícono de error
                                  return const Icon(Icons.error);
                                },
                              );
                            }
                        ),
                      )
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // height: 278,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppTheme.primaryColor(context).withOpacity(0.6),
                            AppTheme.primaryColor(context),
                          ],
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              Environment.appIcon,
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                            notificationsState.when(
                              data: (notifications) {
                                int notificationCant = notifications.length;
                                bool showNotificationLabel = false;
                                if(lastNotificationRevision > 0){
                                  final dateRevision = DateTime.fromMillisecondsSinceEpoch(lastNotificationRevision);
                                  final newNotifications = notifications
                                      .where((element) => element['createdAt'].toDate().isAfter(dateRevision)).toList();
                                  notificationCant = newNotifications.length;

                                  if(notificationCant > 0){
                                    showNotificationLabel = true;
                                  }
                                }else {
                                  showNotificationLabel = notifications.isNotEmpty;
                                }

                                return IconButton(
                                  onPressed: () {
                                    context.pushNamed(NotificationsScreen.name);
                                  },
                                  icon: Badge(
                                    isLabelVisible: showNotificationLabel,
                                    label: Text(notificationCant.toString(), style: const TextStyle(fontSize: 14)),
                                    child: SvgPicture.asset(
                                      'assets/icons/notifications.svg',
                                      width: 22,
                                      height: 22,
                                      colorFilter: ColorFilter.mode(
                                        AppTheme.textColor(context),
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                  color: AppTheme.textColor(context),
                                );
                              },
                              error: (error, stackTrace) {
                                log('error on notifications', error: error, stackTrace: stackTrace,);
                                return Container();
                              },
                              loading: () => Center(
                                child: CircularProgressIndicator(
                                  color: AppTheme.secondaryColor(context),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      right: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GoogleTextWidget(
                            recommendedChannel?.title ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5),
                          GoogleTextWidget(
                            recommendedChannel?.description ?? '',
                            style: TextStyle(color: AppTheme.textColor(context).withOpacity(0.5), fontSize: 14,),
                            maxLines: 2,
                          ),
                          if (recommendedChannel.isNotNull) BaseButtonChannel(
                              channel: recommendedChannel!,
                              channels: asyncChannels.value ?? [],
                              currentCategoryId: currentCategoryId,
                              onPressed: (channel){},
                              child: Padding(
                                padding: EdgeInsets.zero,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 16,
                                      margin: const EdgeInsets.symmetric(vertical: 16).copyWith(right: 8),
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const GoogleTextWidget(
                                      'En Vivo',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              )) else const SizedBox.shrink()
                        ],
                      ),
                    )
                  ],
                )
              ),
            ),

            /// Channels
            SliverFillRemaining(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: GoogleTextWidget(
                      'Favoritos',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 32,
                    child: ScrollablePositionedList.separated(
                      itemScrollController:
                          favoriteCategoriesItemScrollController,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 8);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        final category = categories[index];
                        return Container(
                          constraints: const BoxConstraints(
                            minWidth: 120,
                          ),
                          child: MaterialButton(
                            color: checkIndex<Color, String>(
                              category.id,
                              compareIndex: currentCategoryId,
                              onTrue: AppTheme.secondaryColor(context),
                              onFalse: AppTheme.textColor(context).withOpacity(
                                0.24,
                              ),
                            ),
                            onPressed: () {
                              ref.read(favoritesChannelsProvider.notifier,).getFromCategory(category.id);

                              if (mounted) {
                                setState(() {
                                  currentCategoryId = category.id;
                                  favoriteCategoriesItemScrollController.scrollTo(
                                    index: index,
                                    duration: const Duration(milliseconds: 300),
                                  );
                                });
                              }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: GoogleTextWidget(
                                category.name,
                                style: TextStyle(
                                  color: checkIndex(
                                    category.id,
                                    compareIndex: currentCategoryId,
                                    onTrue: AppTheme.primaryColor(context),
                                    onFalse: AppTheme.textColor(context),
                                  ),
                                  fontWeight: checkIndex(
                                    index,
                                    compareIndex: currentCategoryId,
                                    onTrue: FontWeight.w700,
                                    onFalse: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  asyncChannels.when(
                    data: (channels) {
                      if (channels.isEmpty) {
                        return const SizedBox();
                      }

                      _timerRecommendedChannel = Timer(const Duration(milliseconds: 300), () {
                        if (recommendedChannel == null && channels.isNotEmpty) {
                          if (mounted) {
                            setState(() {
                              recommendedChannel = channels.first;
                            });
                          }
                        }
                      });


                      /* Future.delayed(const Duration(seconds: 1), () {
                        if (recommendedChannel.isNull && channels.isNotEmpty) {
                          if (mounted) {
                            setState(() {
                              recommendedChannel = channels.first;
                            });
                          }
                        }
                      }); */

                      if (currentCategoryId == '') {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 40),
                            child: CircularProgressIndicator(
                              color: AppTheme.secondaryColor(context),
                            ),
                          ),
                        );
                      }

                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 134,
                        margin: const EdgeInsets.only(top: 16),
                        child: ScrollablePositionedList.separated(
                          itemScrollController:
                              favoriteChannelsItemScrollController,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          scrollDirection: Axis.horizontal,
                          itemCount: channels.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(width: 8);
                          },
                          itemBuilder: (BuildContext context, int index) {
                            final channel = channels[index];
                            return SquareButtonChannel(
                                channel: channel,
                                channels: channels,
                                currentCategoryId: currentCategoryId,
                                onPressed: (channelLive) {
                                  setState(() {
                                    recommendedChannel = channelLive;
                                  });
                                }
                            );
                          },
                        ),
                      );
                    },
                    error: (error, stack) {
                      return const SizedBox();
                    },
                    loading: () => Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: CircularProgressIndicator(
                          color: AppTheme.secondaryColor(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
      error: (error, stack) => const SafeArea(
        child: Center(
          child: Text('No pudimos mostrar la información'),
        ),
      ),
      loading: () => Center(
        child: CircularProgressIndicator(
          color: AppTheme.secondaryColor(context),
        ),
      ),
    );
  }
}

