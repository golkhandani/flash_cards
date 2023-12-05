import 'package:flutter/material.dart';

import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:collection/collection.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:page_flip_builder/page_flip_builder.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'package:flash_cards/core/extensions/text_style_extension.dart';
import 'package:flash_cards/modules/flash_card_list/flash_card_logic.dart';
import 'package:flash_cards/routes/test_page.dart';
import 'package:flash_cards/screens/x.dart';

class FlashCardListScreen extends StatefulWidget {
  final String categoryId;
  const FlashCardListScreen({super.key, required this.categoryId});

  @override
  State<FlashCardListScreen> createState() => _FlashCardListScreenState();
}

class _FlashCardListScreenState extends State<FlashCardListScreen> {
  final CardSwiperController controller = CardSwiperController();
  final AppinioSwiperController appiniocontroller = AppinioSwiperController();

  @override
  void initState() {
    loadData(widget.categoryId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double? cartPreviewHeight = MediaQuery.of(context).size.height - 146;

    return Material(
      child: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
              title: Text('Flash cards + ${widget.categoryId}'),
              shadowColor: Colors.black26,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: cartPreviewHeight,
              child: ValueListenableBuilder(
                  valueListenable: listState,
                  builder: (_, state, __) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }
                    if (state.flashCards.isEmpty) {
                      return const Center(
                        child: Text("NoFlashCardFound!"),
                      );
                    }

                    final items = List.from(state.flashCards)
                        .mapIndexed(
                          (i, e) => FlashCardFlipCard(
                            cardKey: GlobalKey<PageFlipBuilderState>(),
                            flashCard: e,
                            gradient: gradientList[i % gradientList.length],
                          ),
                        )
                        .toList();

                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: cartPreviewHeight - 200,
                            child: Stack(
                              children: [
                                const Center(child: Text('You are done!')),
                                CardSwiper(
                                  controller: controller,
                                  cardsCount: items.length,
                                  initialIndex: 0,
                                  isLoop: false,
                                  onSwipe: (p, c, d) {
                                    updateCurrentIndex(c ?? items.length);
                                    return true;
                                  },
                                  numberOfCardsDisplayed: 5,
                                  cardBuilder: (_, index, hop, vop) {
                                    final item = items[index];
                                    return item;
                                  },
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 120,
                            child: Wrap(
                              runSpacing: 12,
                              spacing: 12,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.center,
                              runAlignment: WrapAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Number of total cards: ${items.length}",
                                    style: const TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Number of remaining cards: ${items.length - (state.currentIndex)}",
                                    style: const TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
