import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tvapp/presentation/widgets/category_chip.dart';

import '../../config/theme/app.theme.dart';
import '../../domain/entities/category.entity.dart';
import '../../domain/handlers/check_index.handler.dart';
import '../../widgets/google_text.widget.dart';

class CategorySelector extends ConsumerWidget {
  const CategorySelector({
    super.key,
    required this.categories,
    required this.categoryActive,
    required this.onTap,
  });

  final List<CategoryEntity> categories;
  final String categoryActive;
  final Function(String categoryId) onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channelsCategoriesItemScrollController = ItemScrollController();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: MediaQuery.of(context).size.width,
      height: 32,
      child: ScrollablePositionedList.separated(
        itemScrollController: channelsCategoriesItemScrollController,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
        itemBuilder: (BuildContext context, int index) {
          final category = categories[index];
          // if (index == (categories.length - 1)) {
          //   return Row(
          //     children: [
          //       Container(
          //         constraints: const BoxConstraints(
          //           minWidth: 120,
          //         ),
          //         child: MaterialButton(
          //           color: checkIndex<Color, String>(
          //             category.id,
          //             compareIndex: categoryActive,
          //             onTrue: AppTheme.secondaryColor(context),
          //             onFalse: AppTheme.textColor(context).withOpacity(
          //               0.24,
          //             ),
          //           ),
          //           onPressed: () {
          //             channelsCategoriesItemScrollController.scrollTo(
          //               index: index,
          //               duration: const Duration(milliseconds: 300),
          //             );
          //             onTap(category.id);
          //           },
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(100),
          //           ),
          //           child: Center(
          //             child: GoogleTextWidget(
          //               category.name,
          //               style: TextStyle(
          //                 color: checkIndex<Color, String>(
          //                   category.id,
          //                   compareIndex: categoryActive,
          //                   onTrue: AppTheme.primaryColor(context),
          //                   onFalse: AppTheme.textColor(context),
          //                 ),
          //                 fontWeight: checkIndex<FontWeight, String>(
          //                   category.id,
          //                   compareIndex: categoryActive,
          //                   onTrue: FontWeight.w700,
          //                   onFalse: FontWeight.w500,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //       const SizedBox(width: 8),
          //       if (withOthers)
          //         Container(
          //           constraints: const BoxConstraints(
          //             minWidth: 120,
          //           ),
          //           child: MaterialButton(
          //             color: checkIndex<Color, String>(
          //               'others',
          //               compareIndex: categoryActive,
          //               onTrue: AppTheme.secondaryColor(context),
          //               onFalse: AppTheme.textColor(context).withOpacity(
          //                 0.24,
          //               ),
          //             ),
          //             onPressed: () {
          //               channelsCategoriesItemScrollController.scrollTo(
          //                 index: index,
          //                 duration: const Duration(milliseconds: 300),
          //               );
          //               onTap(category.id);
          //             },
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(100),
          //             ),
          //             child: Center(
          //               child: GoogleTextWidget(
          //                 'Otros',
          //                 style: TextStyle(
          //                   color: checkIndex<Color, String>(
          //                     'others',
          //                     compareIndex: categoryActive,
          //                     onTrue: AppTheme.primaryColor(context),
          //                     onFalse: AppTheme.textColor(context),
          //                   ),
          //                   fontWeight: checkIndex<FontWeight, String>(
          //                     'others',
          //                     compareIndex: categoryActive,
          //                     onTrue: FontWeight.w700,
          //                     onFalse: FontWeight.w500,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //     ],
          //   );
          // }
          return CategoryChip(
              category: category,
              categoryActive: categoryActive,
              onPressed: () {
                channelsCategoriesItemScrollController.scrollTo(
                  index: index,
                  duration: const Duration(milliseconds: 300),
                );
                onTap(category.id);
              });
        },
      ),
    );
  }
}
