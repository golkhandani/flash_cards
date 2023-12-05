import 'package:go_router/go_router.dart';

import 'package:flash_cards/modules/flash_card_category/flash_card_category_screen.dart';

final dashboarCategoriesRoute = GoRoute(
  path: '/dashboard/categories',
  name: 'categories',
  builder: (context, state) => const FlashCardCategoryScreen(),
);
