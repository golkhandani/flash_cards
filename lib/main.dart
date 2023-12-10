import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flash_cards/core/fake_date.dart';
import 'package:flash_cards/core/state_manager.dart';
import 'package:flash_cards/modules/database/flash_card_collection.dart';
import 'package:flash_cards/modules/flash_card_category/state_manager/flash_card_categories_state_manager.dart';
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

    final words = List.from(flashCards504);
    var categoryIdInc = 1;
    while (words.isNotEmpty) {
      final cat = {
        "id": 20 + categoryIdInc,
        "title": "English Essential Words - Part $categoryIdInc",
        "information": "Explore the essential words of English"
      };
      final lesson = (List.from(flashCards504)..shuffle()).take(30);
      await isar.flashCardCategoryDbs
          .putAll([FlashCardCategoryDb.fromJson(cat)]);
      await isar.flashCardDbs.putAll(lesson.map((e) {
        final item = Map<String, dynamic>.from(e);
        item['categoryId'] = cat['id'];
        return FlashCardDb.fromJson(item);
      }).toList());

      for (var element in lesson) {
        words.remove(element);
      }
      categoryIdInc += 1;
    }
  });

  ///
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  final bool shouldShowIntro =
      true ?? prefs.getBool('shouldShowIntro') ?? false;

  final router = GoRouter(
    initialLocation:
        shouldShowIntro ? onBoardingRoute.path : dashboardRoute.path,
    routes: [
      onBoardingRoute,
      ...dashboardRoutes,
    ],
  );

  await prefs.setBool('shouldShowIntro', false);

  runApp(MyApp(router: router));
}

class MyApp extends StatefulWidget {
  final GoRouter router;
  const MyApp({required this.router, super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late UnregistrableController<HomeLogic> unregisterHomeLogic;
  late UnregistrableController<FlashCardCategoriesController>
      flashCardCategoriesLogic;
  late UnregistrableController<FlashCardListLogic> flashCardListLogic;

  @override
  void initState() {
    unregisterHomeLogic =
        ValueState.registerController<HomeLogic>(() => HomeLogic());
    flashCardCategoriesLogic =
        ValueState.registerController(() => FlashCardCategoriesController());
    flashCardListLogic =
        ValueState.registerController(() => FlashCardListLogic());
    super.initState();
  }

  @override
  void dispose() {
    flashCardCategoriesLogic.unregister();
    flashCardListLogic.unregister();
    unregisterHomeLogic.unregister();
    super.dispose();
  }

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
      routerConfig: widget.router,
    );
  }
}
