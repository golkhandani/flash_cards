import 'package:go_router/go_router.dart';

import 'package:word_wise_flash_cards/screens/on_boarding_screen.dart';

final onBoardingRoute = GoRoute(
  path: '/on_boarding',
  builder: (context, state) => const OnBoardingScreen(),
);
