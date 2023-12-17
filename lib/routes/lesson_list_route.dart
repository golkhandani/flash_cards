import 'package:go_router/go_router.dart';

import 'package:word_wise_flash_cards/modules/lesson_list/lesson_list_screen.dart';

final dashboarLessonListRoute = GoRoute(
  path: '/dashboard/lessons',
  name: 'lessons',
  builder: (context, state) => const LessonListScreen(),
);
