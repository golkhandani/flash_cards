import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'package:flash_cards/core/extensions/text_style_extension.dart';
import 'package:flash_cards/modules/flash_card_category/flash_card_category_logic.dart';
import 'package:flash_cards/routes/flash_card_detail_route.dart';
import 'package:flash_cards/routes/test_page.dart';
import 'package:flash_cards/screens/x.dart';

class FlashCardCategoryScreen extends StatefulWidget {
  const FlashCardCategoryScreen({super.key});

  @override
  State<FlashCardCategoryScreen> createState() =>
      _FlashCardCategoryScreenState();
}

class _FlashCardCategoryScreenState extends State<FlashCardCategoryScreen>
    with FlashCardCategoriesLogicMixin {
  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverPinnedHeader(
            child: AppBar(
              scrolledUnderElevation: 2,
              elevation: 2,
              forceMaterialTransparency: false,
              automaticallyImplyLeading: false,
              surfaceTintColor: Colors.transparent,
              backgroundColor: context.colorScheme.tertiaryContainer,
              leading: const MyBackButton(),
              title: const Text('Categories'),
              shadowColor: Colors.black26,
            ),
          ),
          SliverPadding(
            padding:
                EdgeInsets.only(bottom: 88 + MediaQuery.paddingOf(context).top),
            sliver: ValueListenableBuilder(
              valueListenable: categoriesState,
              builder: (_, state, __) {
                if (state.isLoading) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                }
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            context.goNamed(
                              categoriesflashCardListRoute.name!,
                              pathParameters: {
                                flashCardListCategoryIdParam:
                                    state.categories[index].id,
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
                                    state.categories[index].title,
                                    style: const TextStyle(fontSize: 30),
                                    textAlign: TextAlign.center,
                                  ),
                                  const Spacer(),
                                  const Text(
                                    '100 unique cards',
                                    style: TextStyle(fontSize: 22),
                                  ),
                                  Text(
                                    state.categories[index].information,
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
                    childCount: state.categories.length,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
