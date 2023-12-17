import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'package:word_wise_flash_cards/core/extensions/text_style_extension.dart';
import 'package:word_wise_flash_cards/routes/test_page.dart';

final quizRoute = GoRoute(
  path: '/dashboard/quiz',
  name: 'quiz',
  builder: (context, state) => const QuizScreen(),
);

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
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
              title: const Text('Quiz'),
              shadowColor: Colors.black26,
            ),
          ),
          const SliverFillRemaining(
            child: Center(child: Text("Comming soon!")),
          )
        ],
      ),
    );
  }
}
