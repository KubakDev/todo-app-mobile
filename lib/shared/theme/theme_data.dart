import 'package:flutter/material.dart';
import 'package:todo_app/shared/shared.dart';

ThemeData themeData(BuildContext context) => ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: Theme.of(context).textTheme.headline6!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
      ),
      backgroundColor: Colors.white,
      fontFamily: 'Baloo',
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        elevation: 0,
        splashColor: kPrimaryColor,
      ),
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: createMaterialColor(kSecondaryColor),
        primarySwatch: createMaterialColor(kSecondaryColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: createMaterialColor(kSecondaryColor4),
        selectedItemColor: createMaterialColor(kSecondaryColor),
        unselectedItemColor: createMaterialColor(kSecondaryColor),
      ),
      textTheme: const TextTheme(
        headline4: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: kPrimaryColor,
        ),
      ),
    );
