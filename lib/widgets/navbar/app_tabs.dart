import 'package:flutter/material.dart';
import 'package:moniepoint_test/home/home_view.dart';

import '../../map/map_view.dart';
import '../empty_view.dart';

enum AppTabs {
  search,
  message,
  home,
  wishlist,
  profile;

  IconData get icon {
    switch (this) {
      case search:
        return Icons.search;
      case message:
        return Icons.message;
      case home:
        return Icons.home;
      case wishlist:
        return Icons.favorite;
      case profile:
        return Icons.person;
    }
  }

  Widget get buildWidget {
    switch (this) {
      case message:
      case wishlist:
      case profile:
        return EmptyView(text: name);
      case search:
        return const AppMapView();
      case home:
        return const HomeView();
    }
  }

  Widget buildTab({
    bool isSelected = false,
  }) {
    return _navbarItem(icon: icon, selected: isSelected);
  }
}

Widget _navbarItem({
  required IconData icon,
  required bool selected,
}) {
  return Container(
    padding: EdgeInsets.all(selected ? 15 : 10),
    decoration: BoxDecoration(
      color: selected ? const Color(0xFFEB9D29) : Colors.black,
      shape: BoxShape.circle,
    ),
    child: Icon(
      icon,
      size: 22,
      color: Colors.white,
    ),
  );
}
