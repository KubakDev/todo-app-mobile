import 'package:flutter/material.dart';
import 'package:todo_app/shared/shared.dart';

ThemeData themeData(BuildContext context) => ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
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
        primarySwatch: createMaterialColor(kPrimaryColor),
        cardColor: createMaterialColor(kPrimaryColor4),
      ),
      cardColor: kPrimaryColor4,
      listTileTheme: ListTileThemeData(
        // dense: true,
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
