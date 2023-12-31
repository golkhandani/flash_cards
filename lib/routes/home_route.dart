import 'package:go_router/go_router.dart';

import 'package:word_wise_flash_cards/modules/home/home_screen.dart';

final homeRoute = GoRoute(
  path: '/dashboard/home',
  name: 'home',
  builder: (context, state) => const HomeScreen(),
);
