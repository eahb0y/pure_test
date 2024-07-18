import 'package:flutter/material.dart';
import 'package:pure_test/core/theme/app_text_styles.dart';

import 'colors/app_colors.dart';

final appTheme = ThemeData(
  fontFamily: "GolosText",
  useMaterial3: true,
  applyElevationOverlayColor: true,
  splashColor: ThemeColors.primaryColor.withOpacity(0.01),
  focusColor: ThemeColors.primaryColor,
  colorSchemeSeed: ThemeColors.primaryColor,
  visualDensity: VisualDensity.standard,
  materialTapTargetSize: MaterialTapTargetSize.padded,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
  dividerTheme: const DividerThemeData(
    thickness: 1,
  ),
);

final lightTheme = appTheme.copyWith(
  scaffoldBackgroundColor: ThemeColors.scaffoldBackgroundColor,
  brightness: Brightness.light,
  dividerTheme: appTheme.dividerTheme.copyWith(
    // color: LightThemeColors.dividerColor,
  ),
  colorScheme: const ColorScheme.light(
    secondary: ThemeColors.primaryColor,
    primary: ThemeColors.scaffoldBackgroundColor,
  ),
  listTileTheme: const ListTileThemeData(
    minVerticalPadding: 14,
    minLeadingWidth: 16,
    horizontalTitleGap: 12,
    // tileColor: LightThemeColors.backGray,
    selectedColor: LightThemeColors.grey,
    selectedTileColor: LightThemeColors.grey,
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: ThemeColors.white,
    unselectedLabelColor: LightThemeColors.purple,
    labelPadding: EdgeInsets.zero,
    labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
    unselectedLabelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: ThemeColors.white, width: 2.0),
    ),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 1,
    foregroundColor: ThemeColors.scaffoldBackgroundColor,
    backgroundColor: ThemeColors.white,
    surfaceTintColor: ThemeColors.scaffoldBackgroundColor,
    shadowColor: Colors.black,
    toolbarHeight: 200,
    iconTheme: IconThemeData(color: ThemeColors.white),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    alignLabelWithHint: true,
    labelStyle: AppTextStyles.textFieldLabel,
    hintStyle: AppTextStyles.textFieldLabel,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      borderSide: BorderSide(color: LightThemeColors.borderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      borderSide: BorderSide(color: LightThemeColors.borderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      borderSide: BorderSide(
        color: ThemeColors.grey,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      borderSide: BorderSide(color: LightThemeColors.borderColor),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      // borderSide: BorderSide(color: ThemeColors.errorColor),
    ),
    filled: true,
    isDense: true,
    fillColor: ThemeColors.scaffoldBackgroundColor,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    floatingLabelBehavior: FloatingLabelBehavior.always,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: WidgetStateProperty.all<double>(0),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: LightThemeColors.whiteText,
        ),
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return LightThemeColors.whiteText;
        } else {
          return LightThemeColors.whiteText;
        }
      }),
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return LightThemeColors.disableButton;
        } else {
          return LightThemeColors.buttonBackColor;
        }
      }),
      maximumSize: WidgetStateProperty.all<Size>(
        const Size(double.infinity, 50),
      ),
      minimumSize: WidgetStateProperty.all<Size>(
        const Size(double.infinity, 50),
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: LightThemeColors.navigationBarBack,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
    unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
    unselectedItemColor: LightThemeColors.purple,
    selectedItemColor: LightThemeColors.yellow,
    selectedIconTheme: IconThemeData(size: 25),
    unselectedIconTheme: IconThemeData(size: 25),
    elevation: 2,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 4, vertical: 2)),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      elevation: WidgetStateProperty.all<double>(2),
      // foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
      //   return LightThemeColors.dialogText;
      // }),
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return Colors.transparent;
        } else {
          return Colors.transparent;
        }
      }),
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return LightThemeColors.whiteText;
        } else {
          return LightThemeColors.whiteText;
        }
      }),
      maximumSize: WidgetStateProperty.all<Size>(
        const Size(double.infinity, double.infinity),
      ),
      minimumSize: WidgetStateProperty.all<Size>(
        const Size(double.minPositive, double.minPositive),
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: LightThemeColors.whiteText,
        ),
      ),
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.transparent,
    // surfaceTintColor: Colors.transparent,
    modalBackgroundColor: Colors.transparent,
    modalElevation: 0,
    elevation: 0,
  ),
);