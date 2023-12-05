import 'dart:math';

import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:page_flip_builder/page_flip_builder.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'package:flash_cards/core/extensions/text_style_extension.dart';
import 'package:flash_cards/core/fake_date.dart';
import 'package:flash_cards/modules/database/flash_card_collection.dart';
import 'package:flash_cards/modules/flash_card_list/flash_card_logic.dart';
import 'package:flash_cards/modules/flash_card_list/flash_card_model.dart';
import 'package:flash_cards/routes/flash_card_detail_route.dart';
import 'package:flash_cards/routes/test_page.dart';
import 'package:flash_cards/screens/x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then((_) {});
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
                        Builder(builder: (context) {
                          double? height =
                              MediaQuery.sizeOf(context).width * 1.5;
                          double? width = MediaQuery.sizeOf(context).width;

                          double? cartPreviewHeight = height - 240;

                          width = width - 16;

                          final previewItems = List.from(fakeFlashCards)
                              .take(2)
                              .map(
                                (e) => FlashCardModel.fromDb(
                                  FlashCardDb.fromJson(e),
                                ),
                              )
                              .mapIndexed(
                                (i, e) => FlashCardFlipCard(
                                  cardKey: GlobalKey<PageFlipBuilderState>(),
                                  flashCard: e,
                                  gradient:
                                      gradientList[i % gradientList.length],
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
                                  const Text(
                                    'Continue exploring the last flash cards you were exploring!',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context.goNamed(
                                        homeflashCardListRoute.name!,
                                        pathParameters: {
                                          flashCardListCategoryIdParam: '1',
                                        },
                                      );
                                    },
                                    child: AbsorbPointer(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: cartPreviewHeight,
                                          child: CardSwiper(
                                            cardsCount: previewItems.length,
                                            cardBuilder: (BuildContext context,
                                                int index,
                                                int horizontalOffsetPercentage,
                                                int verticalOffsetPercentage) {
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
                                      ElevatedButton(
                                        onPressed: () {
                                          context.goNamed(
                                            homeflashCardListRoute.name!,
                                            pathParameters: {
                                              flashCardListCategoryIdParam: '1',
                                            },
                                          );
                                        },
                                        child:
                                            const Text('Continue Exploring!'),
                                      ),
                                      const SizedBox(width: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Navigate to Quiz page
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage()));
                                        },
                                        child: const Text('Start Quiz?'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                        Builder(builder: (context) {
                          double? height = 260;
                          double? width = MediaQuery.sizeOf(context).width;

                          if (ResponsiveBreakpoints.of(context).isTablet) {
                            height = MediaQuery.sizeOf(context).width / 2;
                            width = MediaQuery.sizeOf(context).width / 2;
                          }

                          if (ResponsiveBreakpoints.of(context).isDesktop) {
                            height =
                                min(MediaQuery.sizeOf(context).width / 2, 260);
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
                                    "Pick up where you left off!",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  const Spacer(),
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    runAlignment: WrapAlignment.start,
                                    runSpacing: 16,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          // Navigate to Categories page
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesPage()));
                                        },
                                        child: const Text('Explore Categories'),
                                      ),
                                      const SizedBox(width: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Navigate to Quiz page
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage()));
                                        },
                                        child: const Text('Start Quiz'),
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
