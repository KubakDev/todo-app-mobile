import 'package:flutter/material.dart';

class ColorUtils {
  const ColorUtils(this.context);
  final BuildContext context;

  static const Color kIconUnSelectedLight = Color(0xFF454747);
  static const Color kIconUnSelectedDark = Color(0xFFc5c7c6);
  Color get kIconUnSelected {
    if (Theme.of(context).brightness == Brightness.dark) {
      return kIconUnSelectedDark;
    }
    return kIconUnSelectedLight;
  }

  static const Color kIconSelectedDark = Color(0xFFc2e6fe);
  static const Color kIconSelectedLight = Color(0xFF001d34);
  Color get kIconSelected {
    if (Theme.of(context).brightness == Brightness.dark) {
      return kIconSelectedDark;
    }
    return kIconSelectedLight;
  }

  static const Color kBarBgDark = Color(0xFF2e2e32);
  static const Color kBarBgLight = Color(0xFFf1f5fa);
  Color get kBarBg {
    if (Theme.of(context).brightness == Brightness.dark) {
      return kBarBgDark;
    }
    return kBarBgLight;
  }

  static const Color kIconBgLight = Color(0xFFc3e7ff);
  static const Color kIconBgDark = Color(0xFF014b77);
  Color get kIconBg {
    if (Theme.of(context).brightness == Brightness.dark) {
      return kIconBgDark;
    }
    return kIconBgLight;
  }
}
