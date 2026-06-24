import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/config/extensions/context.extension.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/handlers/check_index.handler.dart';
import 'package:tvapp/presentation/providers/selected_tab.provider.dart';
import 'package:tvapp/providers/ads.state.dart';
import 'package:tvapp/providers/connectivity_notifier.state.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

class BottomBarWidget extends ConsumerStatefulWidget {
  const BottomBarWidget({super.key});

  @override
  ConsumerState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends ConsumerState<BottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    final currentTab = ref.watch(selectedTabProvider);
    final currentTabNotifier = ref.read(selectedTabProvider.notifier);
    final streamAdsState = ref.watch(streamAdsProvider);
    return Wrap(
      direction: Axis.vertical,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 78,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 2,
                color: AppTheme.textColor(context),
              ),
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        // context.checkConnectivity();
                        ref.read(connectivityNotifierProvider.notifier).checkConnectivity();
                        currentTabNotifier.value(0);
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            currentTab == 0 ? 'assets/icons/home_selected.svg' : 'assets/icons/home.svg',
                            width: 22,
                            height: 22,
                            colorFilter: ColorFilter.mode(
                              currentTab == 0 ? AppTheme.secondaryColor(context) : Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(height: 8),
                          GoogleTextWidget(
                            'Inicio',
                            style: TextStyle(
                              color: checkIndex(
                                currentTab,
                                compareIndex: 0,
                                onTrue: AppTheme.secondaryColor(context),
                                onFalse: AppTheme.textColor(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
                Expanded(
                  child: SizedBox(
                    // width: 72,
                    child: MaterialButton(
                      onPressed: () {
                        // context.checkConnectivity();
                        ref.read(connectivityNotifierProvider.notifier).checkConnectivity();
                        currentTabNotifier.value(1);
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent, 
                      padding: EdgeInsets.zero,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           SvgPicture.asset(
                            currentTab == 1 ? 'assets/icons/channels_selected.svg' : 'assets/icons/channels.svg',
                            width: 22,
                            height: 22,
                            colorFilter: ColorFilter.mode(
                              currentTab == 1 ? AppTheme.secondaryColor(context) : Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(height: 8),
                          GoogleTextWidget(
                            'Canales',
                            style: TextStyle(
                              color: checkIndex(
                                currentTab,
                                compareIndex: 1,
                                onTrue: AppTheme.secondaryColor(context),
                                onFalse: AppTheme.textColor(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    // width: 72,
                    child: MaterialButton(
                      onPressed: () {
                        // context.checkConnectivity();
                        ref.read(connectivityNotifierProvider.notifier).checkConnectivity();
                        currentTabNotifier.value(2);
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent, 
                      padding: EdgeInsets.zero,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           SvgPicture.asset(
                            currentTab == 2 ? 'assets/icons/favorite_selected.svg' : 'assets/icons/favorite.svg',
                            width: 22,
                            height: 22,
                            colorFilter: ColorFilter.mode(
                              currentTab == 2 ? AppTheme.secondaryColor(context) : Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(height: 8),
                          GoogleTextWidget(
                            'Favoritos',
                            style: TextStyle(
                              color: checkIndex(
                                currentTab,
                                compareIndex: 2,
                                onTrue: AppTheme.secondaryColor(context),
                                onFalse: AppTheme.textColor(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    // width: 72,
                    child: MaterialButton(
                      onPressed: () {
                        // context.checkConnectivity();
                        ref.read(connectivityNotifierProvider.notifier).checkConnectivity();
                        currentTabNotifier.value(3);
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent, 
                      padding: EdgeInsets.zero,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          SvgPicture.asset(
                            currentTab == 3 ? 'assets/icons/account_selected.svg' : 'assets/icons/account.svg',
                            width: 22,
                            height: 22,
                            colorFilter: ColorFilter.mode(
                              currentTab == 3 ? AppTheme.secondaryColor(context) : Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(height: 8),
                          GoogleTextWidget(
                            'Cuenta',
                            style: TextStyle(
                              color: checkIndex(
                                currentTab,
                                compareIndex: 3,
                                onTrue: AppTheme.secondaryColor(context),
                                onFalse: AppTheme.textColor(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              
              ],
            ),
          ),
        ),
        Visibility(
          visible: currentTab == 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 64,
            color: AppTheme.textColor(context),
            child: Center(
              child: streamAdsState.when(
                data: (src) {
                  return Image.network(
                    '${Environment.middlewareHost}/storage/$src',
                    width: MediaQuery.of(context).size.width,
                    height: 64,
                    fit: BoxFit.cover,
                    errorBuilder:  (BuildContext context, Object error, StackTrace? stackTrace) {
                      return const Icon(
                        Icons.error,
                        color: Colors.green,
                      );
                    },
                  );
                },
                error: (error, stackTrace) {
                  return const GoogleTextWidget('');
                },
                loading: () => CircularProgressIndicator(
                  color: AppTheme.secondaryColor(context),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
