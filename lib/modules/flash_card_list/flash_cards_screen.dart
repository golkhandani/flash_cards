import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:page_flip_builder/page_flip_builder.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'package:word_wise_flash_cards/core/extensions/context_ui_extension.dart';
import 'package:word_wise_flash_cards/core/extensions/text_style_extension.dart';
import 'package:word_wise_flash_cards/core/state_manager.dart';
import 'package:word_wise_flash_cards/modules/flash_card_list/flash_card_flip_card.dart';
import 'package:word_wise_flash_cards/modules/flash_card_list/state_manager/flash_card_list_state_manager.dart';
import 'package:word_wise_flash_cards/routes/test_page.dart';

class FlashCardListScreen extends StatefulWidget {
  final String categoryId;
  const FlashCardListScreen({super.key, required this.categoryId});

  @override
  State<FlashCardListScreen> createState() => _FlashCardListScreenState();
}

class _FlashCardListScreenState extends State<FlashCardListScreen> {
  final CardSwiperController _swiperController = CardSwiperController();

  final _logic = Vsm.get<FlashCardListController>();
  void listener(FlashCardListState o, FlashCardListState c) {
    if (o.currentIndex != c.currentIndex) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _swiperController.reInit();
      });
    }
  }

  @override
  void initState() {
    _logic
      ..addListener(listener)
      ..loadData(widget.categoryId);
    super.initState();
  }

  @override
  void dispose() {
    _logic.removeListener(listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contentHeight = context.fixedContentHeight;
    const footerHeight = 186.0;

    return VsmView<FlashCardListController, FlashCardListState>(
      builder: (_, state) {
        return Material(
          color: context.colorScheme.background,
          child: Center(
            child: CustomScrollView(
              physics: const NeverScrollableScrollPhysics(),
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
                      state.category?.title ?? '',
                      style: TextStyle(
                        color: context.colorScheme.onTertiaryContainer,
                      ),
                    ),
                    shadowColor: Colors.black45,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: contentHeight,
                    child: Builder(builder: (_) {
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
                              flashCardData: e,
                              gradient: gradientList[i % gradientList.length],
                              index: i,
                            ),
                          )
                          .toList();

                      return Column(
                        children: [
                          const SizedBox(height: 8),
                          Container(
                            height: 48,
                            margin: const EdgeInsets.only(top: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Ink(
                                      padding: EdgeInsets.zero,
                                      decoration: ShapeDecoration(
                                        color: state.currentIndex > 1
                                            ? context.colorScheme.primary
                                            : context
                                                .colorScheme.primaryContainer,
                                        shape: const CircleBorder(),
                                      ),
                                      child: IconButton(
                                        color: context.colorScheme.background,
                                        onPressed: state.currentIndex > 1
                                            ? () {
                                                _logic.updateCurrentIndex(0);
                                              }
                                            : null,
                                        icon: const Icon(Icons.restart_alt),
                                      ),
                                    ),
                                    Ink(
                                      padding: EdgeInsets.zero,
                                      decoration: ShapeDecoration(
                                        color: state.currentIndex > 0
                                            ? context.colorScheme.primary
                                            : context
                                                .colorScheme.primaryContainer,
                                        shape: const CircleBorder(),
                                      ),
                                      child: IconButton(
                                        color: context.colorScheme.background,
                                        onPressed: state.currentIndex > 0
                                            ? () {
                                                _logic.updateCurrentIndex(
                                                  state.currentIndex - 1,
                                                );
                                              }
                                            : null,
                                        icon: const Icon(Icons.undo),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: contentHeight - footerHeight - 48 - 16,
                            child: Stack(
                              children: [
                                const Center(child: Text('You are done!')),
                                CardSwiper(
                                  controller: _swiperController,
                                  cardsCount: items.length,
                                  initialIndex: state.initialIndex,
                                  isLoop: true,
                                  backCardOffset: const Offset(0, 40),
                                  scale: 0.85,
                                  onSwipe: (p, c, d) {
                                    _logic
                                        .updateCurrentIndex(c ?? items.length);
                                    return true;
                                  },
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  numberOfCardsDisplayed: 5,
                                  cardBuilder: (_, index, hop, vop) {
                                    final item = items[index];
                                    return item;
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            height: footerHeight - 24,
                            child: Column(
                              children: [
                                const SizedBox(height: 72),
                                AlwaysVisibleThumbSlider(
                                  value: state.initialIndex,
                                  max: state.flashCards.length,
                                  onChanged: (double value) {
                                    _logic.updateCurrentIndex(value.toInt());
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class AlwaysVisibleThumbSlider extends StatelessWidget {
  const AlwaysVisibleThumbSlider({
    super.key,
    required this.value,
    required this.max,
    this.labelIncrement = 1,
    required this.onChanged,
  });

  final int value;
  final int max;
  final int labelIncrement;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: const SliderThemeData(
        showValueIndicator: ShowValueIndicator.never,
        thumbShape: _ThumbShape(),
      ),
      child: Slider(
        value: value.toDouble(),
        max: max.toDouble(),
        divisions: max,
        label: '${(value + labelIncrement)} from ${max.toInt()}'.toString(),
        onChanged: onChanged,
      ),
    );
  }
}

class _ThumbShape extends RoundSliderThumbShape {
  final _indicatorShape = const PaddleSliderValueIndicatorShape();

  const _ThumbShape();

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    super.paint(
      context,
      center,
      activationAnimation: activationAnimation,
      enableAnimation: enableAnimation,
      sliderTheme: sliderTheme,
      value: value,
      textScaleFactor: textScaleFactor,
      sizeWithOverflow: sizeWithOverflow,
      isDiscrete: isDiscrete,
      labelPainter: labelPainter,
      parentBox: parentBox,
      textDirection: textDirection,
    );
    _indicatorShape.paint(
      context,
      center,
      activationAnimation: const AlwaysStoppedAnimation(1),
      enableAnimation: enableAnimation,
      labelPainter: labelPainter,
      parentBox: parentBox,
      sliderTheme: sliderTheme,
      value: value,
// test different testScaleFactor to find your best fit
      textScaleFactor: 1.2,
      sizeWithOverflow: sizeWithOverflow,
      isDiscrete: isDiscrete,
      textDirection: textDirection,
    );
  }
}
