import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:version/version.dart';

import 'package:word_wise_flash_cards/core/database/flash_card_collection.dart';
import 'package:word_wise_flash_cards/core/fake_date.dart';
import 'package:word_wise_flash_cards/core/state_manager.dart';
import 'package:word_wise_flash_cards/modules/flash_card_list/state_manager/flash_card_list_state_manager.dart';
import 'package:word_wise_flash_cards/modules/home/state_manager/home_state_manager.dart';
import 'package:word_wise_flash_cards/modules/lesson_list/state_manager/lesson_list_state_manager.dart';
import 'package:word_wise_flash_cards/routes/dashboard_route.dart';
import 'package:word_wise_flash_cards/routes/on_boarding_route.dart';

GetIt getIt = GetIt.instance;

Future<bool> loadDB() async {
  final info = await PackageInfo.fromPlatform();
  final prefs = await SharedPreferences.getInstance();
  final String latestVersionDbUpdatedStr =
      prefs.getString('latestVersionDbUpdated') ?? '0.0.0';

  final currentVersion = Version.parse(info.version);
  final latestVersionDbUpdated = Version.parse(latestVersionDbUpdatedStr);
  debugPrint(info.version);

  final shouldUpdateDb = latestVersionDbUpdatedStr == '0.0.0' ||
      currentVersion > latestVersionDbUpdated;

  if (!shouldUpdateDb) {
    debugPrint("NO NEED TO UPDATE DB!");
    return true;
  }

  debugPrint("NEED TO UPDATE DB!");

  final isar = getIt.get<Isar>();

  await isar.writeTxn(() async {
    await isar.clear();
    final words = List.from(flashCards504);
    var lessonIdInc = 1;
    while (words.isNotEmpty) {
      final cat = {
        "id": 20 + lessonIdInc,
        "title": "English Essential Words - Part $lessonIdInc",
        "information": "Explore the essential words of English"
      };
      final lesson = (List.from(flashCards504)..shuffle()).take(30);
      await isar.lessonDbs.putAll([LessonDb.fromJson(cat)]);
      await isar.flashCardDbs.putAll(lesson.map((e) {
        final item = Map<String, dynamic>.from(e);
        item['categoryId'] = cat['id'];
        return FlashCardDb.fromJson(item);
      }).toList());

      for (var element in lesson) {
        words.remove(element);
      }
      lessonIdInc += 1;
    }
  });

  await prefs.setString('latestVersionDbUpdated', info.version);
  return true;
}

const ColorScheme colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color.fromRGBO(159, 62, 255, 1),
  onPrimary: Colors.white,
  primaryContainer: Color.fromRGBO(174, 153, 196, 1),
  onPrimaryContainer: Colors.white,

  secondary: Color.fromRGBO(179, 124, 234, 1),
  onSecondary: Colors.white,
  secondaryContainer: Color.fromRGBO(255, 255, 255, 1),
  onSecondaryContainer: Color.fromRGBO(121, 51, 194, 1),

  tertiary: Color.fromRGBO(178, 140, 215, 1),
  onTertiary: Colors.white,
  tertiaryContainer: Color.fromRGBO(227, 198, 255, 1),
  onTertiaryContainer: Color.fromRGBO(0, 0, 0, 1),

  error: Colors.red,
  onError: Colors.white,
  errorContainer: Color.fromRGBO(181, 177, 178, 0.8),
  onErrorContainer: Colors.white,

  background: Colors.white, // Set to white
  onBackground: Color.fromRGBO(0, 0, 0, 0.8),
  surface: Color.fromRGBO(255, 255, 255, 1),
  onSurface: Color.fromRGBO(0, 0, 0, 1),
  inverseSurface: Color.fromRGBO(124, 128, 155, 0.8),
  onInverseSurface: Color.fromRGBO(0, 0, 0, 0.8),
  shadow: Color.fromRGBO(124, 128, 155, 0.8),
);
const MaterialColor swatch = Colors.purple;

extension ColorSchemeTextTheme on ColorScheme {
  TextTheme getTextTheme() {
    ColorScheme colorScheme = this;
    return GoogleFonts.quicksandTextTheme().copyWith(
      displayMedium: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.1,
        height: 1.5,
        color: colorScheme.onSurface,
      ),
      bodyLarge: TextStyle(
        height: 2,
        color: colorScheme.onSurface,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        height: 1.5,
        color: colorScheme.onSurface,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        height: 1.2,
        color: colorScheme.onSurface,
        fontSize: 12,
      ),
      labelMedium: TextStyle(
        height: 1.5,
        color: colorScheme.onSurface,
      ),
      headlineSmall: TextStyle(
        color: colorScheme.onSurface,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
        height: 1.2,
      ),
      headlineLarge: TextStyle(
        color: colorScheme.onSurface,
        fontSize: 32,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
        height: 2,
      ),
      titleSmall: TextStyle(
        color: colorScheme.onSurface,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
        height: 1.2,
      ),
      titleMedium: TextStyle(
        color: colorScheme.onSurface,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
        height: 1.5,
      ),
      titleLarge: TextStyle(
        color: colorScheme.onSurface,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
        height: 2,
      ),
    );
  }
}

final ThemeData ultravioletTheme = ThemeData(
  colorScheme: colorScheme,
  primarySwatch: swatch,
  scaffoldBackgroundColor: colorScheme.surface,
  primaryColor: colorScheme.primary,
  splashColor: colorScheme.tertiary,
  highlightColor: Colors.transparent,
  canvasColor: colorScheme.surface,
  shadowColor: colorScheme.shadow,
  hintColor: colorScheme.tertiary,
  fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
  textTheme: colorScheme.getTextTheme(),
  buttonTheme: ButtonThemeData(
    buttonColor: colorScheme.primary,
    textTheme: ButtonTextTheme.primary,
  ),
  cardTheme: CardTheme(
    color: colorScheme.secondary,
    elevation: 5.0,
  ),
  iconTheme: IconThemeData(color: colorScheme.onBackground),
  toggleButtonsTheme: const ToggleButtonsThemeData(
    fillColor: Color(0xFFF9A3B6),
    selectedColor: Color(0xFFF48FB1),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: colorScheme.primary,
      ),
    ),
    hintStyle: TextStyle(color: colorScheme.tertiary),
    labelStyle: TextStyle(color: colorScheme.primary),
    disabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: colorScheme.primary),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: colorScheme.primary),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: colorScheme.primary),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: colorScheme.error),
    ),
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: colorScheme.primary,
    inactiveTrackColor: colorScheme.tertiary,
    // thumbColor: Color(0xFFD1EBBB),
    // overlayColor: Color(0xFF6DA872),
    // valueIndicatorColor: Color(0xFFF48FB1),
  ),
);

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [
      LessonDbSchema,
      FlashCardDbSchema,
    ],
    directory: dir.path,
  );

  getIt.registerSingleton<Isar>(isar);

  ///
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  final bool shouldShowIntro =
      kDebugMode || (prefs.getBool('shouldShowIntro') ?? false);

  final router = GoRouter(
    initialLocation:
        shouldShowIntro ? onBoardingRoute.path : dashboardRoute.path,
    routes: [
      onBoardingRoute,
      ...dashboardRoutes,
    ],
  );

  await prefs.setBool('shouldShowIntro', false);
  await loadDB();

  runApp(MyApp(router: router));
}

class MyApp extends StatefulWidget {
  final GoRouter router;
  const MyApp({required this.router, super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late VsmUnregistrable<HomeController> homeController;
  late VsmUnregistrable<LessonListController> lessonListController;
  late VsmUnregistrable<FlashCardListController> flashCardListController;

  @override
  void initState() {
    homeController = Vsm.register(() => HomeController());
    lessonListController = Vsm.register(() => LessonListController());
    flashCardListController = Vsm.register(() => FlashCardListController());
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  void dispose() {
    homeController.unregister();
    lessonListController.unregister();
    flashCardListController.unregister();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ultravioletTheme,
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
