import 'package:flutter/material.dart';
import 'package:moniepoint_test/animations/app_animations.dart';
import 'package:moniepoint_test/widgets/navbar/app_tabs.dart';

import 'widgets/navbar/app_navbar.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppTabs selectedTab = AppTabs.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedTab.buildWidget,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AppNavBar(
        currentTab: selectedTab,
        onChanged: (t) {
          setState(() {
            selectedTab = t;
          });
        },
      ).navBar,
    );
  }
}
