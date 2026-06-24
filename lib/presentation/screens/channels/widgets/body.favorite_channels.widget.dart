import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/enums/list_type.enum.dart';
import 'package:tvapp/domain/handlers/check_index.handler.dart';
import 'package:tvapp/domain/repositories/channels.repository.dart';
import 'package:tvapp/presentation/screens/player/player.screen.dart';
import 'package:tvapp/providers/channels.state.dart';
import 'package:tvapp/providers/favorite_categories.state.dart';
import 'package:tvapp/providers/favorites_channel.stage.dart';
import 'package:tvapp/storage/secure_storage.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

import '../../../widgets/category_selector.dart';
import '../../../widgets/channel_list_type_button.dart';
import '../../../widgets/channel_vertical_list.dart';

/// Body Widget
class BodyWidget extends ConsumerStatefulWidget {
  const BodyWidget({super.key});

  @override
  ConsumerState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends ConsumerState<BodyWidget> {
  /// Variables
  String currentCategoryId = '';
  int? loadingFavoriteIndex;
  int currentCategoryIndex = 0;
  ListType listType = ListType.list;

  /// Controllers
  final channelsCategoriesItemScrollController = ItemScrollController();
  final channelsChannelsItemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    final asyncCategories = ref.watch(favoriteCategoriesProvider);
    final asyncChannels = ref.watch(favoritesChannelsProvider);

    return Center(
      child: Column(children: [
        //Chips de categorias
        asyncCategories.when(
            data: (categories) {
              if (currentCategoryId.isEmpty && categories.isNotEmpty) {
                Future.microtask(() {
                    ref
                        .read(favoritesChannelsProvider.notifier)
                        .getFromCategory(categories.first.id);
                    setState(() {
                      currentCategoryId = categories.first.id;
                    });
                  },
                );
              }
              return CategorySelector(
                  categories: categories,
                  categoryActive: currentCategoryId,
                  onTap: (categoryId) {
                    setState(() {
                      currentCategoryId = categoryId;
                      currentCategoryIndex = categories
                          .indexWhere((element) => element.id == categoryId);

                      if (categoryId != 'others') {
                        ref
                            .read(favoritesChannelsProvider.notifier)
                            .getFromCategory(categoryId);
                      }
                    });
                  });
            },
            error: (error, stack) => Container(),
            loading: () => Center(
                child: CircularProgressIndicator(
                    color: AppTheme.secondaryColor(context)))),
        ChannelListTypeButton(
            listType: listType,
            onPressed: () {
              setState(() {
                listType =
                listType == ListType.list ? ListType.grid : ListType.list;
              });
            }),
        asyncChannels.when(
            data: (lstChannels) {
              return ChannelVerticalList(
                lisType: listType,
                show: true,
                channels: lstChannels,
                currentCategoryId: currentCategoryId,
                onSelectChannel: (channel){

                },
              );
            },
            error: (error, stack) => const SafeArea(
              child:
              Center(child: Text('No pudimos mostrar el contenido.')),
            ),
            loading: () => Center(
                child: CircularProgressIndicator(
                    color: AppTheme.secondaryColor(context)))),
      ]),
    );
  }
}
