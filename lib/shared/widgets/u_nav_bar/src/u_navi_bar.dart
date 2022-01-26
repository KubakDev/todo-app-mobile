import 'package:flutter/material.dart';
import 'package:todo_app/shared/widgets/u_nav_bar/u_navi_bar.dart';

class UNaviBar extends StatelessWidget {
  const UNaviBar({
    Key? key,
    required this.items,
    this.selectedIndex = 0,
    this.onTap,
  }) : super(key: key);
  final List<UNaviBarItem> items;
  final int selectedIndex;
  final Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    assert(items.length >= 2, 'At least 2 UNaviBarItem needed');

    return BottomNavigationBar(
      currentIndex: selectedIndex,
      elevation: 0,
      selectedFontSize: 11,
      unselectedFontSize: 11,
      unselectedItemColor: Colors.transparent,
      onTap: (j) => onTap?.call(j),
      items: items,
    );
  }
}
