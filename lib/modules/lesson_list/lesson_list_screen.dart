import 'dart:math';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'package:word_wise_flash_cards/core/extensions/text_style_extension.dart';
import 'package:word_wise_flash_cards/core/state_manager.dart';
import 'package:word_wise_flash_cards/modules/flash_card_list/flash_card_flip_card.dart';
import 'package:word_wise_flash_cards/modules/lesson_list/data/lesson_data.dart';
import 'package:word_wise_flash_cards/modules/lesson_list/state_manager/lesson_list_state_manager.dart';
import 'package:word_wise_flash_cards/routes/flash_card_detail_route.dart';
import 'package:word_wise_flash_cards/routes/test_page.dart';

class NoImplicitScrollPhysics extends AlwaysScrollableScrollPhysics {
  const NoImplicitScrollPhysics({required ScrollPhysics parent})
      : super(parent: parent);

  @override
  bool get allowImplicitScrolling => false;

  @override
  NoImplicitScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return NoImplicitScrollPhysics(parent: buildParent(ancestor!)!);
  }
}

class LessonListScreen extends StatefulWidget {
  const LessonListScreen({super.key});

  @override
  State<LessonListScreen> createState() => _LessonListScreenState();
}

class _LessonListScreenState extends State<LessonListScreen> {
  final _controller = Vsm.get<LessonListController>();
  final _scrollController = ScrollController(keepScrollOffset: true);
  @override
  void initState() {
    _controller.loadData();
    _scrollController.addListener(() {
      FocusManager.instance.primaryFocus?.unfocus();
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        physics: const NoImplicitScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        controller: _scrollController,
        slivers: [
          SliverPinnedHeader(
            child: AppBar(
              scrolledUnderElevation: 0,
              elevation: 0,
              forceMaterialTransparency: false,
              automaticallyImplyLeading: false,
              surfaceTintColor: context.colorScheme.tertiaryContainer,
              backgroundColor: context.colorScheme.tertiaryContainer,
              leading: const MyBackButton(),
              title: Text(
                'Lessons',
                style: TextStyle(
                  color: context.colorScheme.onTertiaryContainer,
                ),
              ),
              shadowColor: Colors.black26,
            ),
          ),
          VsmView<LessonListController, LessonListState>(
            builder: (c, state) {
              if (state.isLoading) {
                return const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                );
              }

              return SliverPadding(
                padding: EdgeInsets.only(
                    bottom: 88 + MediaQuery.paddingOf(context).top),
                sliver: MultiSliver(
                  children: [
                    SliverPinnedHeader(
                      child: Card(
                        surfaceTintColor: context.colorScheme.tertiaryContainer,
                        color: context.colorScheme.tertiaryContainer,
                        margin: EdgeInsets.zero,
                        shadowColor: Colors.black45,
                        elevation: 10,
                        child: Container(
                          color: context.colorScheme.tertiaryContainer,
                          height: 64,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 8,
                          ),
                          child: SizedBox(
                            child: Autocomplete<LessonData>(
                              /// set this in your real apps initialValue: const TextEditingValue(text: 'Hi'),
                              fieldViewBuilder: (
                                BuildContext context,
                                TextEditingController textEditingController,
                                FocusNode focusNode,
                                VoidCallback onFieldSubmitted,
                              ) {
                                return TextFormField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    textBaseline: TextBaseline.ideographic,
                                    color:
                                        context.colorScheme.onTertiaryContainer,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Search for lessons',
                                    hintStyle: TextStyle(
                                      textBaseline: TextBaseline.ideographic,
                                      fontSize: 14,
                                      color:
                                          context.colorScheme.primaryContainer,
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: context
                                              .colorScheme.onTertiaryContainer),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  focusNode: focusNode,
                                  controller: textEditingController,
                                  onFieldSubmitted: (String value) {
                                    onFieldSubmitted();
                                  },
                                );
                              },
                              optionsViewBuilder:
                                  (context, onAutoCompleteSelect, options) {
                                return Align(
                                  alignment: Alignment.topLeft,
                                  child: Material(
                                    color:
                                        context.colorScheme.tertiaryContainer,
                                    elevation: 4.0,
                                    // size works, when placed here below the Material widget
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      width: MediaQuery.of(context).size.width -
                                          32,
                                      height: min(options.length * 48, 160),
                                      child: ListView.separated(
                                        shrinkWrap: true,
                                        padding: const EdgeInsets.all(8.0),
                                        itemCount: options.length,
                                        separatorBuilder: (context, i) {
                                          return const Divider();
                                        },
                                        itemBuilder: (context, index) {
                                          final item = options.toList()[index];
                                          return GestureDetector(
                                            onTap: () =>
                                                onAutoCompleteSelect(item),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(item.title),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                              displayStringForOption: (option) => option.title,
                              optionsBuilder: (textEditingValue) {
                                if (textEditingValue.text == '') {
                                  return const Iterable<LessonData>.empty();
                                }
                                _controller.filter(textEditingValue.text);
                                return state.filteredCategories
                                    .where((LessonData option) {
                                  return option.title.toLowerCase().contains(
                                        textEditingValue.text.toLowerCase(),
                                      );
                                });
                              },
                              onSelected: (LessonData selection) {
                                debugPrint('You just selected $selection');
                                FocusManager.instance.primaryFocus?.unfocus();
                                // context.goNamed(
                                //   categoriesflashCardListRoute.name!,
                                //   pathParameters: {
                                //     flashCardListCategoryIdParam: selection.id,
                                //   },
                                // );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                context.goNamed(
                                  categoriesflashCardListRoute.name!,
                                  pathParameters: {
                                    flashCardListCategoryIdParam:
                                        state.filteredCategories[index].id,
                                  },
                                );
                              },
                              child: Card(
                                color: colorList[index % colorList.length],
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width,
                                  height: MediaQuery.sizeOf(context).width / 2,
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    children: [
                                      Text(
                                        state.filteredCategories[index].title,
                                        style: const TextStyle(fontSize: 30),
                                        textAlign: TextAlign.center,
                                      ),
                                      const Spacer(),
                                      Text(
                                        state.filteredCategories[index]
                                            .information,
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        // 40 list items
                        childCount: state.filteredCategories.length,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
