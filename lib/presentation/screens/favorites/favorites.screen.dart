import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tvapp/presentation/screens/channels/widgets/body.favorite_channels.widget.dart';
import 'package:tvapp/presentation/screens/favorites/screens/search-favorites.screen.dart';
import 'package:tvapp/widgets/app_bar.widget.dart';

/// Favorites Screen
class FavoritesScreen extends ConsumerStatefulWidget {
  const FavoritesScreen({super.key});

  @override
  ConsumerState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends ConsumerState<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: 'Favoritos',
        actions: [
          /// Search
          IconButton(
            onPressed: () {
              context.pushNamed(SearchFavoritesScreen.name);
              // context.pushNamed(SearchScreen.name);
            },
            icon: Image.asset(
              'assets/icons/search.png',
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
