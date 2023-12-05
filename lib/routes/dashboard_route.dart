import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:flash_cards/routes/categories_route.dart';
import 'package:flash_cards/routes/flash_card_detail_route.dart';
import 'package:flash_cards/routes/home_route.dart';
import 'package:flash_cards/routes/quiz_route.dart';
import 'package:flash_cards/screens/dashboard_screen.dart';

Page<void> dashboardPageBuilder(GoRouterState state, Widget screen) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    restorationId: state.pageKey.value,
    child: screen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
      position: animation.drive(
        Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero).chain(
          CurveTween(curve: Curves.easeInOutCubic),
        ),
      ),
      child: child,
    ),
  );
}

final dashboardRoute = GoRoute(
  name: DashboardScreen.name,
  path: '/${DashboardScreen.name}',
  redirect: (context, state) async {
    return state.namedLocation(
      dashboarCategoriesRoute.name ??
          DashboardWrapper.dashboardRouteNameToSelectedIndexMap.keys.first,
    );
  },
  builder: (context, state) => const DashboardScreen(),
);

final dashboardShellRoutes = StatefulShellRoute.indexedStack(
  pageBuilder: (context, state, child) {
    return MaterialPage(
      child: HeroControllerScope(
        controller: MaterialApp.createMaterialHeroController(),
        child: LayoutBuilder(
          // yes that LayoutBuilder is important. I don't know why
          builder: (ctx, constraints) => DashboardWrapper(child: child),
        ),
      ),
    );
  },
  builder: (BuildContext context, GoRouterState state,
      StatefulNavigationShell child) {
    return DashboardWrapper(child: child);
  },
  branches: [
    /// HOME PAGE
    StatefulShellBranch(
      routes: <RouteBase>[
        GoRoute(
          name: homeRoute.name!,
          path: homeRoute.path,
          pageBuilder: (context, state) => dashboardPageBuilder(
            state,
            homeRoute.builder!(context, state),
          ),
          routes: [
            homeflashCardListRoute,
          ],
        ),
      ],
    ),

    /// CATEGORIES PAGE
    StatefulShellBranch(
      routes: <RouteBase>[
        GoRoute(
          name: dashboarCategoriesRoute.name!,
          path: dashboarCategoriesRoute.path,
          pageBuilder: (context, state) => dashboardPageBuilder(
            state,
            dashboarCategoriesRoute.builder!(context, state),
          ),
          routes: [
            categoriesflashCardListRoute,
          ],
        ),
      ],
    ),

    /// QUIZ PAGE
    StatefulShellBranch(
      routes: <RouteBase>[
        GoRoute(
          name: quizRoute.name!,
          path: quizRoute.path,
          pageBuilder: (context, state) => dashboardPageBuilder(
            state,
            quizRoute.builder!(context, state),
          ),
        ),
      ],
    ),
  ],
);
final dashboardRoutes = [
  dashboardRoute,
  dashboardShellRoutes,
];
