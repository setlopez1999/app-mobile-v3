import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/domain/enums/list_type.enum.dart';
import 'package:tvapp/presentation/providers/selected_category.provider.dart';
import 'package:tvapp/presentation/widgets/category_selector.dart';
import 'package:tvapp/presentation/widgets/channel_list_type_button.dart';
import 'package:tvapp/presentation/widgets/channel_vertical_list.dart';
import 'package:tvapp/providers/channels.state.dart';
import 'package:tvapp/providers/channels_not_plan.state.dart';
import 'package:tvapp/providers/index.state.dart';

import '../../../../domain/entities/category.entity.dart';

/// Body Widget
class BodyWidget extends ConsumerStatefulWidget {
  const BodyWidget({super.key});

  @override
  ConsumerState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends ConsumerState<BodyWidget> {
  /// Variables
  String currentCategoryId = '';
  int currentCategoryIndex = 0;
  ListType listType = ListType.list;
  bool isFirstBuild = true;

  /// Controllers
  final channelsChannelsItemScrollController = ItemScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final asyncChannels = ref.watch(channelsProvider);
    final asyncChannelsNotPlan = ref.watch(channelsNotPlanProvider);
    final asyncInfo = ref.watch(indexStateProvider);

    final selectCategoryProvider = ref.watch(selectedCategoryProvider);

    Future.microtask(
      () {
        if (isFirstBuild && asyncInfo.hasValue && asyncInfo.value?.categories.isNotEmpty == true) {
          final categoryId = asyncInfo.value?.categories.first.id;

          if (selectCategoryProvider == '' || isFirstBuild) {
            if (mounted) {
              ref.read(selectedCategoryProvider.notifier).value(categoryId!);
            }
          }

          isFirstBuild = false; 
        }
      }
    );

    // Changes the category by changing the state of 'selectCategoryProvider'
    ref.listen<String>(selectedCategoryProvider, (previous, categorySelected) {
        // if (previous != categorySelected && categorySelected.isNotEmpty) {
        if (categorySelected.isNotEmpty) {
          if(mounted){
            ref.read(channelsProvider.notifier).getFromCategory(categorySelected);
          }
        }
        // }
    });

    return Center(
      child: Column(children: [
        //Chips de categorias
        asyncInfo.when(
            data: (info) {
              final categories = List<CategoryEntity>.from(info.categories);

              if (asyncChannelsNotPlan.value?.isNotEmpty ?? false) {
                categories.add(CategoryEntity.Ohter());
              }

              return CategorySelector(
                categories: categories,
                categoryActive: selectCategoryProvider,
                // categoryActive: currentCategoryId,
                onTap: (categoryId) {
                  if (mounted) {
                    ref.read(selectedCategoryProvider.notifier).value(categoryId);
                  }
                });
            },
            error: (error, stack) => Container(),
            loading: Container.new),
            ChannelListTypeButton(
              listType: listType,
              onPressed: () {
                setState(() {
                  listType = listType == ListType.list ? ListType.grid : ListType.list;
                });
            }
        ),
      
        asyncChannels.when(
            data: (channels) {
              return ChannelVerticalList(
                lisType: listType,
                show: currentCategoryId != 'others',
                channels: channels,
                currentCategoryId: selectCategoryProvider,
              );
            },
            error: (error, stack) => const SafeArea(
                  child:
                      Center(child: Text('No pudimos mostrar el contenido.')),
                ),
            loading: () => Center(
                child: CircularProgressIndicator(
                    color: AppTheme.secondaryColor(context)))
        ),
        if(selectCategoryProvider == 'others')
          asyncChannelsNotPlan.when(
              data: (channels) {
                return ChannelVerticalList(
                  lisType: listType,
                  show: selectCategoryProvider == 'others',
                  // show: currentCategoryId == 'others',
                  channels: channels
                      .map<Channel>(Channel.fromNotPlan)
                      .toList(),
                  currentCategoryId: selectCategoryProvider,
                );
              },
              error: (error, stack) => const SafeArea(
                    child:
                        Center(child: Text('No pudimos mostrar el contenido.')),
                  ),
              loading: () => Center(
                  child: selectCategoryProvider == 'others' ? CircularProgressIndicator(
                      color: AppTheme.secondaryColor(context)): const SizedBox.shrink())),
      ]),
    );
  }
}
