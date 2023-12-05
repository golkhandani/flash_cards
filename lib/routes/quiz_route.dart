import 'package:go_router/go_router.dart';

import 'package:flash_cards/routes/test_page.dart';

final quizRoute = GoRoute(
  path: '/dashboard/quiz',
  name: 'quiz',
  builder: (context, state) => const TestScreen(title: 'quizRoute'),
);
