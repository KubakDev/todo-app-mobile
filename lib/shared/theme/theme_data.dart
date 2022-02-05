import 'package:flutter/material.dart';
import 'package:todo_app/shared/shared.dart';

ThemeData themeData(
  BuildContext context,
  ThemeMode mode,
) {
  final dark = mode == ThemeMode.dark;
  final kPrimaryColor =
      dark ? const Color(0xFF6D4AFC) : const Color(0xFF6D4AFC);
  final kPrimaryColor2 =
      dark ? const Color(0xFF4327B3) : const Color(0xFF967EF9);
  final kPrimaryColor4 =
      dark ? const Color(0xFF1A103D) : const Color(0xFFEAE4FF);
  final kPrimaryColor5 =
      dark ? const Color(0xFF130A30) : const Color(0xFFF9F7FF);
  final kSecondaryColor =
      dark ? const Color(0xFFF778BA) : const Color(0xFFF778BA);
  final kSecondaryColor3 =
      dark ? const Color(0xFF792450) : const Color(0xFFFFC2E2);
  final kSecondaryColor4 =
      dark ? const Color(0xFF361025) : const Color(0xFFFFF2F9);
  final background = dark ? const Color(0xFF161616) : Colors.white;
  final forground = dark ? Colors.white : Colors.black;
  return ThemeData(
    appBarTheme: AppBarTheme(
      color: background,
      elevation: 0,
      iconTheme: IconThemeData(color: forground),
      titleTextStyle: Theme.of(context).textTheme.headline6!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
    ),
    backgroundColor: background,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: kPrimaryColor4,
      filled: true,
      hintStyle: TextStyle(
        fontSize: 20,
        color: kPrimaryColor2,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
    fontFamily: 'Baloo',
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      elevation: 0,
      splashColor: kPrimaryColor,
    ),
    scaffoldBackgroundColor: background,
    colorScheme: ColorScheme.fromSwatch(
      accentColor: createMaterialColor(kSecondaryColor),
      primarySwatch: createMaterialColor(kPrimaryColor),
      primaryColorDark: createMaterialColor(kPrimaryColor),
      backgroundColor: background,
      cardColor: createMaterialColor(kPrimaryColor4),
      brightness: dark ? Brightness.dark : Brightness.light,
    ),
    cardColor: kPrimaryColor4,
    hintColor: kPrimaryColor2,
    primaryColorDark: kPrimaryColor,
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? kPrimaryColor
            : kSecondaryColor,
      ),
      trackColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? kPrimaryColor2
            : kSecondaryColor3,
      ),
    ),
    dialogBackgroundColor: kPrimaryColor5,
    dividerColor: kPrimaryColor5,
    listTileTheme: ListTileThemeData(
      selectedColor: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      iconColor: kPrimaryColor,
      textColor: kPrimaryColor,
    ),
    checkboxTheme: CheckboxThemeData(
      // activeColor: kPrimaryColor,
      // checkColor: createMaterialColor(kPrimaryColor),
      fillColor: MaterialStateProperty.all(kPrimaryColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: createMaterialColor(kSecondaryColor4),
      selectedItemColor: createMaterialColor(kSecondaryColor),
      unselectedItemColor: createMaterialColor(kSecondaryColor3),
      selectedIconTheme: const IconThemeData(size: 30),
      unselectedIconTheme: const IconThemeData(size: 30),
    ),
    textTheme: TextTheme(
      headline4: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: kPrimaryColor,
      ),
    ),
  );
}
