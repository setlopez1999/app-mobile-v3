import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/presentation/screens/channels/screens/guide.channels.screen.dart';
import 'package:tvapp/presentation/screens/channels/screens/search.screen.dart';
import 'package:tvapp/presentation/screens/channels/widgets/body.channels.widget.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';

/// Channels screen
class ChannelsScreen extends ConsumerStatefulWidget {
  const ChannelsScreen({super.key});

  static String name = 'channels';

  @override
  ConsumerState createState() => _ChannelsScreenState();
}

class _ChannelsScreenState extends ConsumerState<ChannelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'Canales',
        actions: [
          /// Search
          IconButton(
            onPressed: () {
              context.pushNamed(SearchScreen.name);
            },
            icon: Image.asset(
              'assets/icons/search.png',
              width: 24,
              height: 24,
            ),
          ),

          /// Comments
          IconButton(
            onPressed: () {
              context.pushNamed(GuideScreen.name);
            },
            icon: Image.asset(
              'assets/icons/comments.png',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: const BodyWidget(),
    );
  }
}
