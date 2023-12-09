import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'package:flash_cards/core/fake_date.dart';
import 'package:flash_cards/core/state_manager.dart';
import 'package:flash_cards/modules/database/flash_card_collection.dart';
import 'package:flash_cards/modules/flash_card_list/state_manager/flash_card_list_state_manager.dart';
import 'package:flash_cards/modules/home/state_manager/home_state_manager.dart';
import 'package:flash_cards/routes/dashboard_route.dart';
import 'package:flash_cards/routes/on_boarding_route.dart';

GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [
      FlashCardCategoryDbSchema,
      FlashCardDbSchema,
    ],
    directory: dir.path,
  );

  getIt.registerSingleton<Isar>(isar);

  await isar.writeTxn(() async {
    final categoryCount = await isar.flashCardCategoryDbs.count();
    final cardCount = await isar.flashCardDbs.count();

    if (categoryCount != 0 && cardCount != 0) {
      return;
    }
    await isar.clear();
    await isar.flashCardCategoryDbs.putAll(fakeFlashCardCategories
        .map((e) => FlashCardCategoryDb.fromJson(e))
        .toList());

    await isar.flashCardDbs
        .putAll(fakeFlashCards.map((e) => FlashCardDb.fromJson(e)).toList());

    await isar.flashCardCategoryDbs.putAll(flashCardCategories504
        .map((e) => FlashCardCategoryDb.fromJson(e))
        .toList());

    await isar.flashCardDbs.putAll(flashCards504.map((e) {
      final item = Map<String, dynamic>.from(e);
      item['categoryId'] = 20;
      return FlashCardDb.fromJson(item);
    }).toList());
  });

  ///
  ValueState.registerController(() => FlashCardListLogic());
  ValueState.registerController(() => HomeLogic());
  runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: dashboardRoute.path,
  routes: [
    onBoardingRoute,
    ...dashboardRoutes,
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 550, name: MOBILE),
          const Breakpoint(start: 551, end: 750, name: TABLET),
          const Breakpoint(start: 751, end: 1650, name: DESKTOP),
          const Breakpoint(start: 1651, end: double.infinity, name: '4K'),
        ],
      ),
      routerConfig: _router,
    );
  }
}
