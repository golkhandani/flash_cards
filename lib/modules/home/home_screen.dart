import 'dart:math';

import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:page_flip_builder/page_flip_builder.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'package:flash_cards/core/extensions/text_style_extension.dart';
import 'package:flash_cards/core/state_manager.dart';
import 'package:flash_cards/modules/flash_card_list/flash_card_flip_card.dart';
import 'package:flash_cards/modules/home/state_manager/home_state_manager.dart';
import 'package:flash_cards/routes/flash_card_detail_route.dart';
import 'package:flash_cards/routes/test_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeLogic _logic = ValueState.getController<HomeLogic>();

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
              scrolledUnderElevation: 2,
              elevation: 2,
              forceMaterialTransparency: false,
              automaticallyImplyLeading: false,
              surfaceTintColor: Colors.transparent,
              backgroundColor: context.colorScheme.tertiaryContainer,
              leading: const MyBackButton(),
              title: const Text('Home'),
              shadowColor: Colors.black26,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 88),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      runAlignment: WrapAlignment.start,
                      children: <Widget>[
                        ValueState<HomeLogic, HomeState>.builder(
                            builder: (context, state) {
                          double? height =
                              MediaQuery.sizeOf(context).width * 1.5;
                          double? width = MediaQuery.sizeOf(context).width;

                          double? cartPreviewHeight = height - 240;

                          width = width - 16;

                          if (state.isLoading) {
                            return SizedBox(
                              height: height,
                              width: width,
                              child: const Center(
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
                                  gradient: gradientList[((state
                                                  .flashCardCategory
                                                  ?.lastCardIndex ??
                                              1) +
                                          i) %
                                      gradientList.length],
                                  index: i,
                                ),
                              )
                              .toList();

                          return Card(
                            color: const Color.fromRGBO(255, 224, 130, 1),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              height: height,
                              width: width,
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
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: cartPreviewHeight,
                                          child: CardSwiper(
                                            cardsCount: 2,
                                            numberOfCardsDisplayed: 2,
                                            cardBuilder:
                                                (context, index, _, __) {
                                              return previewItems[index];
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
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
                                                        state.flashCardCategory
                                                                ?.id
                                                                .toString() ??
                                                            '-1',
                                                  },
                                                );
                                              },
                                              child: const Text(
                                                  'Continue Exploring!'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Builder(builder: (context) {
                      double? height = 260;
                      double? width = MediaQuery.sizeOf(context).width;

                      if (ResponsiveBreakpoints.of(context).isTablet) {
                        height = MediaQuery.sizeOf(context).width / 2;
                        width = MediaQuery.sizeOf(context).width / 2;
                      }

                      if (ResponsiveBreakpoints.of(context).isDesktop) {
                        height = min(MediaQuery.sizeOf(context).width / 2, 260);
                        width = MediaQuery.sizeOf(context).width / 2;
                      }

                      width = width - 16;

                      return Card(
                        color: const Color.fromARGB(255, 226, 243, 245),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          height: height,
                          width: width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Text(
                                'Recent Category',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                "Embark on a journey of knowledge and language mastery with FlashLearn, your go-to flash card companion. Whether you're aiming to expand your vocabulary, enhance language skills, or dive into a new subject, FlashLearn is here to make learning engaging and effective.",
                                style: TextStyle(fontSize: 14),
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
                                          onPressed: () {},
                                          child: const Text('Rate!'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
