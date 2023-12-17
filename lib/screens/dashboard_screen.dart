import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:go_router/go_router.dart';

import 'package:word_wise_flash_cards/core/components/navigation_item.dart';
import 'package:word_wise_flash_cards/core/components/navigation_shell.dart';
import 'package:word_wise_flash_cards/core/extensions/text_style_extension.dart';
import 'package:word_wise_flash_cards/routes/about_route.dart';
import 'package:word_wise_flash_cards/routes/home_route.dart';
import 'package:word_wise_flash_cards/routes/lesson_list_route.dart';

class DashboardScreen extends StatelessWidget {
  static String name = 'dashboard';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DashboardWrapper extends StatelessWidget {
  const DashboardWrapper({
    super.key,
    required this.child,
  });
  final StatefulNavigationShell child;

  static Map<String, int> dashboardRouteNameToSelectedIndexMap = {
    homeRoute.name!: 0,
    dashboarLessonListRoute.name!: 1,
    aboutRoute.name!: 2,
  };

  @override
  Widget build(BuildContext context) {
    void onItemTapped(int index) {
      child.goBranch(
        index,
        initialLocation: index == child.currentIndex,
      );
    }

    int calculateDashboardSelectedIndex() {
      final String location = GoRouterState.of(context).uri.path;
      final name = dashboardRouteNameToSelectedIndexMap.keys
          .firstWhereOrNull((element) => location.contains(element));

      return dashboardRouteNameToSelectedIndexMap[name] ?? 0;
    }

    final currentIndex = calculateDashboardSelectedIndex();
    final items = [
      NavigationItem(
        iconData: Icons.home_outlined,
        label: homeRoute.name?.toUpperCase(),
      ),
      NavigationItem(
        iconData: Icons.list_alt,
        label: dashboarLessonListRoute.name?.toUpperCase(),
      ),
      NavigationItem(
        iconData: Icons.question_answer_outlined,
        label: aboutRoute.name?.toUpperCase(),
      ),
    ];

    return NavigationShell(
      items: items,
      currentIndex: currentIndex,
      onTap: onItemTapped,
      activeColor: context.colorScheme.primary,
      inactiveColor: context.colorScheme.onTertiaryContainer,
      backgroundColor: context.colorScheme.tertiaryContainer,
      useFloatingNavBar: true,
      handleTopSafePadding: false,
      child: child,
    );
  }
}
