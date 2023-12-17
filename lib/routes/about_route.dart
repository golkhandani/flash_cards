import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:timelines/timelines.dart';

import 'package:word_wise_flash_cards/core/extensions/context_ui_extension.dart';
import 'package:word_wise_flash_cards/core/extensions/text_style_extension.dart';
import 'package:word_wise_flash_cards/core/utils.dart';
import 'package:word_wise_flash_cards/routes/test_page.dart';

final aboutRoute = GoRoute(
  path: '/dashboard/about',
  name: 'about',
  builder: (context, state) => const AboutScreen(),
);

final roadMap = [
  'Spice things up with some different flash card categories. Imagine "Every day words!" or "Coffee shop words!"—you name it!',
  'Get ready for a challenge! Let\'s throw in quizzes so you can test your skills and figure out where you need a bit more practice.',
  'It\'s your show! Add or remove flash cards as you please. You\'re in control here.'
];

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
              title: Text(
                'About',
                style: TextStyle(
                  color: context.colorScheme.onTertiaryContainer,
                ),
              ),
              shadowColor: Colors.black26,
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  IntrinsicHeight(
                    child: Container(
                      color: context.colorScheme.background,
                      child: const Text(
                        "Hello users! I'm gearing up for some updates, and I could really use your input to make things awesome. The timeline is as flexible as a rubber band, so if you have thoughts or requests, just drop me a line. I'm here to code your wishes into reality – or, you know, something close to it. Ready for your feedback! 😊👩‍💻🚀",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: openStore,
                            child: Text(
                              'Give me a feedback!',
                              style: TextStyle(
                                color: context.colorScheme.onSurface,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: context.viewBottomPaddingWithFooter
                          .copyWith(left: 16),
                      child: Timeline.tileBuilder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        clipBehavior: Clip.hardEdge,
                        theme: TimelineThemeData(
                          color: context.colorScheme.primary,
                          nodePosition: 0.1,
                          indicatorPosition: 0.1,
                        ),
                        builder: TimelineTileBuilder(
                          startConnectorBuilder: (context, index) => index == 0
                              ? null
                              : SolidLineConnector(
                                  color: context.colorScheme.primary,
                                ),
                          endConnectorBuilder: (context, index) =>
                              index == roadMap.length - 1
                                  ? null
                                  : SolidLineConnector(
                                      color: context.colorScheme.primary,
                                    ),
                          nodePositionBuilder: (context, index) => 0,
                          indicatorBuilder: (context, index) => DotIndicator(
                            color: context.colorScheme.primary,
                          ),
                          contentsAlign: ContentsAlign.basic,
                          contentsBuilder: (context, index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0)
                                    .copyWith(bottom: 24),
                            child: Text(roadMap[index]),
                          ),
                          itemCount: roadMap.length,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
