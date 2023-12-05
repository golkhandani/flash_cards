import 'package:go_router/go_router.dart';

import 'package:flash_cards/modules/flash_card_list/flash_cards_screen.dart';

const flashCardListCategoryIdParam = 'categoryId';
final categoriesflashCardListRoute = GoRoute(
  path: 'categories/:$flashCardListCategoryIdParam/flash_card',
  name: 'categories/categoryId/flash_card_detail',
  builder: (context, state) {
    final categoryId = state.pathParameters['categoryId'] as String;
    return FlashCardListScreen(categoryId: categoryId);
  },
);

final homeflashCardListRoute = GoRoute(
  path: 'home/:$flashCardListCategoryIdParam/flash_card',
  name: 'home/categoryId/flash_card_detail',
  builder: (context, state) {
    final categoryId = state.pathParameters['categoryId'] as String;
    return FlashCardListScreen(categoryId: categoryId);
  },
);
