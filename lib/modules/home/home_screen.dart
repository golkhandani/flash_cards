import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:page_flip_builder/page_flip_builder.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'package:word_wise_flash_cards/core/components/sliver_gap.dart';
import 'package:word_wise_flash_cards/core/extensions/text_style_extension.dart';
import 'package:word_wise_flash_cards/core/state_manager.dart';
import 'package:word_wise_flash_cards/core/utils.dart';
import 'package:word_wise_flash_cards/modules/flash_card_list/flash_card_flip_card.dart';
import 'package:word_wise_flash_cards/modules/home/state_manager/home_state_manager.dart';
import 'package:word_wise_flash_cards/routes/flash_card_detail_route.dart';
import 'package:word_wise_flash_cards/routes/test_page.dart';

final requestText =
    """We're on this quirky language-learning adventure together, and I need your ninja-level feedback to make WordWise even cooler!\n 🕵️‍♂️Drop your thoughts in the review section, and let's turn this app into the Chuck Norris of vocabulary learning. 🥋💪\nPromise: I'll be adding the "most requested feature of the month" like it's the secret ingredient in grandma's cookies. 🍪🔥\nYour words are my compass. Together, let's make WordWise the superhero of language apps!
"""
        .trim();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeController _logic = Vsm.get<HomeController>();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then((_) {});
    _logic.loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverPinnedHeader(
            child: AppBar(
              scrolledUnderElevation: 10,
              elevation: 2,
              forceMaterialTransparency: false,
              automaticallyImplyLeading: false,
              surfaceTintColor: Colors.transparent,
              backgroundColor: context.colorScheme.tertiaryContainer,
              leading: const MyBackButton(),
              title: Text(
                'Home',
                style: TextStyle(
                  color: context.colorScheme.onTertiaryContainer,
                ),
              ),
              shadowColor: Colors.black45,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: MultiSliver(
              children: [
                const SliverGap(height: 16),
                SliverToBoxAdapter(
                  child: VsmView<HomeController, HomeState>(
                      builder: (context, state) {
                    if (state.isLoading) {
                      return const SizedBox(
                        child: Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      );
                    }

                    final previewItems = List.from(state.flashCards ?? [])
                        .take(2)
                        .mapIndexed(
                          (i, e) => FlashCardFlipCard(
                            cardKey: GlobalKey<PageFlipBuilderState>(),
                            flashCardData: e,
                            gradient: gradientList[
                                ((state.flashCardCategory?.lastCardIndex ?? 1) +
                                        i) %
                                    gradientList.length],
                            index: i,
                          ),
                        )
                        .toList();

                    return IntrinsicHeight(
                      child: Card(
                        color: const Color.fromARGB(255, 166, 202, 253),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Text(
                                'Pick up where you left off!',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Continue exploring the last flash cards from ${state.flashCardCategory?.title ?? ''}!',
                                style: const TextStyle(fontSize: 14),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.goNamed(
                                    homeflashCardListRoute.name!,
                                    pathParameters: {
                                      flashCardListCategoryIdParam: state
                                              .flashCardCategory?.id
                                              .toString() ??
                                          '-1',
                                    },
                                  );
                                },
                                child: AbsorbPointer(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 32),
                                    child: SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height / 3,
                                      child: CardSwiper(
                                        cardsCount: 2,
                                        numberOfCardsDisplayed: 2,
                                        cardBuilder: (context, index, _, __) {
                                          return previewItems[index];
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.start,
                                runAlignment: WrapAlignment.start,
                                runSpacing: 16,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            context.goNamed(
                                              homeflashCardListRoute.name!,
                                              pathParameters: {
                                                flashCardListCategoryIdParam:
                                                    state.flashCardCategory?.id
                                                            .toString() ??
                                                        '-1',
                                              },
                                            );
                                          },
                                          child: Text(
                                            'Continue Learning!',
                                            style: TextStyle(
                                              color:
                                                  context.colorScheme.onSurface,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                const SliverGap(height: 16),
                SliverToBoxAdapter(
                  child: IntrinsicHeight(
                    child: Card(
                      color: const Color.fromARGB(255, 255, 230, 249),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        width: MediaQuery.sizeOf(context).width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              '🚀 Hey WordWisers! Ready for a Wild Ride? 🎉',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Expanded(
                              child: Text(
                                requestText,
                                style: const TextStyle(fontSize: 16),
                                softWrap: true,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.start,
                              runAlignment: WrapAlignment.start,
                              runSpacing: 16,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: openStore,
                                        child: Text(
                                          'Give me a feedback!',
                                          style: TextStyle(
                                            color:
                                                context.colorScheme.onSurface,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SliverGap(height: 120)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
