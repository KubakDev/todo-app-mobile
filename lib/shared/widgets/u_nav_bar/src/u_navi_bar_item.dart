import 'package:flutter/material.dart';

class UNaviBarItem extends BottomNavigationBarItem {
  UNaviBarItem(
    BuildContext context, {
    required Icon icon,
    required String label,
  }) : super(
          icon: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100),
            ),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
            margin: const EdgeInsets.only(bottom: 8, top: 4),
            child: IconTheme(
              data: IconThemeData(
                color: Theme.of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
              ),
              child: icon,
            ),
          ),
          activeIcon: Container(
            decoration: BoxDecoration(
              color: Theme.of(context)
                  .bottomNavigationBarTheme
                  .unselectedItemColor,
              borderRadius: BorderRadius.circular(100),
            ),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
            margin: const EdgeInsets.only(bottom: 8, top: 4),
            child: icon,
          ),
          label: label,
        );
}
