import 'package:flutter/material.dart';

import 'app_tabs.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    super.key,
    this.currentTab = AppTabs.home,
    required this.onChanged,
  });
  final AppTabs currentTab;
  final Function(AppTabs) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 48,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black.withOpacity(0.8),
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: AppTabs.values
            .map((e) => GestureDetector(
                  onTap: () {
                    onChanged.call(e);
                  },
                  child: e.buildTab(isSelected: currentTab == e),
                ))
            .toList(),
      ),
    );
  }
}
