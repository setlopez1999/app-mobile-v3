import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tvapp/config/extensions/context.extension.dart';
import 'package:tvapp/presentation/providers/selected_tab.provider.dart';
import 'package:tvapp/presentation/screens/channels/channels.screen.dart';
import 'package:tvapp/presentation/screens/favorites/favorites.screen.dart';
import 'package:tvapp/presentation/screens/home/widgets/body.home.widget.dart';
import 'package:tvapp/presentation/screens/my_account/my_account.screen.dart';
import 'package:tvapp/presentation/widgets/bottom_bar.widget.dart';
import 'package:tvapp/providers/connectivity_notifier.state.dart';
import 'package:video_player/video_player.dart';

/// Home Screen
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  static String path = '/home';
  static String name = 'Home';

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  /// Variables
  int selectedWishListCategory = 0;
  bool loaderComplete = false;

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        loaderComplete = true;
      });
    });
    FirebaseMessaging.instance.onTokenRefresh.listen((token) async {
      final prefs = await SharedPreferences.getInstance();
      final email = prefs.getString('email');
      await FirebaseFirestore.instance
          .collection('credentials')
          .doc(email)
          .update({
        'fcm': token,
      });
    });
    _controller = VideoPlayerController.asset('assets/video/anim_bantel.mp4')
      ..initialize().then((_) {
        setState(() {});
      })
      ..play();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // context.checkConnectivity();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (loaderComplete) {
      return Scaffold(
        body: _selectedTab(),
        bottomNavigationBar: const BottomBarWidget(),
      );
    } else if (_controller.value.isInitialized) {
      return Scaffold(
        body: Center(child: 
          LayoutBuilder(
            builder: (context, constraints) {
              return FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxWidth / _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              );
            },
          )
        ,),
      );
      /* return Scaffold(
        body: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
      ); */
    } else {
      return Container();
    }
  }

  Widget _selectedTab() {
    final currentTab = ref.watch(selectedTabProvider);
    switch (currentTab) {
      case 1:
        return const ChannelsScreen();
      case 2:
        return const FavoritesScreen();
      case 3:
        return const MyAccountScreen();
      default:
        return const BodyWidget();
    }
  }
}
