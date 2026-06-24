import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:tvapp/domain/enums/list_type.enum.dart';
import 'package:tvapp/domain/handlers/check_index.handler.dart';
import 'package:tvapp/widgets/google_text.widget.dart';

/// Body Widget
class BodyWidget extends ConsumerStatefulWidget {
  const BodyWidget({super.key});

  @override
  ConsumerState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends ConsumerState<BodyWidget> {
  /// Variables
  int currentCategoryIndex = 0;
  ListType listType = ListType.list;

  /// Controllers
  final channelsCategoriesItemScrollController = ItemScrollController();
  final channelsChannelsItemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            width: MediaQuery.of(context).size.width,
            height: 32,
            child: ScrollablePositionedList.separated(
              itemScrollController: channelsCategoriesItemScrollController,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 8);
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  constraints: const BoxConstraints(
                    minWidth: 120,
                  ),
                  child: MaterialButton(
                    color: checkIndex(
                      index,
                      compareIndex: currentCategoryIndex,
                      onTrue: AppTheme.secondaryColor(context),
                      onFalse: AppTheme.textColor(context).withOpacity(
                        0.24,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        currentCategoryIndex = index;
                        channelsCategoriesItemScrollController.scrollTo(
                          index: index,
                          duration: const Duration(milliseconds: 300),
                        );
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: GoogleTextWidget(
                        'Category ${index + 1}',
                        style: TextStyle(
                          color: checkIndex(
                            index,
                            compareIndex: currentCategoryIndex,
                            onTrue: AppTheme.primaryColor(context),
                            onFalse: AppTheme.textColor(context),
                          ),
                          fontWeight: checkIndex(
                            index,
                            compareIndex: currentCategoryIndex,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14).copyWith(
              bottom: 16,
            ),
            child: Row(
              children: [
                if (listType == ListType.list)
                  SizedBox(
                    width: 34,
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          listType = ListType.grid;
                        });
                      },
                      padding: EdgeInsets.zero,
                      child: Image.asset(
                        'assets/icons/grid.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                if (listType == ListType.grid)
                  SizedBox(
                    width: 34,
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          listType = ListType.list;
                        });
                      },
                      padding: EdgeInsets.zero,
                      child: Image.asset(
                        'assets/icons/list.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: listType == ListType.list
                ? ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: Center(
                              child: GoogleTextWidget(
                                '10${index + 1}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              onTap: () {},
                              leading: Image.network(
                                'https://placehold.co/64.png',
                              ),
                              title: GoogleTextWidget('Canal ${index + 1}'),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_rounded,
                                  color: AppTheme.secondaryColor(context),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: 100,
                  )
                : GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.3,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: List.generate(
                      100,
                      (int index) {
                        return Column(
                          children: [
                            Image.network(
                              'https://placehold.co/210x90.png',
                              width: 210,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GoogleTextWidget('Canal ${index + 1}'),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outline_rounded,
                                    color: AppTheme.secondaryColor(context),
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
