import 'package:flutter/material.dart';
import 'package:pure_test/core/utils/app_utils.dart';
import 'colors/app_colors.dart';

final appTheme = ThemeData(
  fontFamily: "GolosText",
  useMaterial3: true,
  applyElevationOverlayColor: true,
  // disabledColor: ThemeColors.disabledColor,
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
  // textButtonTheme: TextButtonThemeData(
  //   style: ButtonStyle(
  //     padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
  //       EdgeInsets.zero,
  //     ),
  //   ),
  // ),
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
    // shape: RoundedRectangleBorder(
    //   borderRadius: AppUtils.kBorderRadius4,
    // ),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: ThemeColors.primaryColor,
    unselectedLabelColor: LightThemeColors.purple,
    labelPadding: EdgeInsets.zero,
    labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
    unselectedLabelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: ThemeColors.primaryColor, width: 2.0),
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
    // shape: ContinuousRectangleBorder(
    //   borderRadius: BorderRadius.only(
    //     bottomLeft: Radius.circular(24),
    //     bottomRight: Radius.circular(24),
    //   ),
    // ),
    // titleTextStyle: TextStyle(
    //   fontSize: 16,
    //   fontWeight: FontWeight.w600,
    //   color: LightThemeColors.textBlack,
    // ),
    toolbarHeight: 200,
    iconTheme: IconThemeData(color: ThemeColors.primaryColor),
  ),
  // inputDecorationTheme: const InputDecorationTheme(
  //   alignLabelWithHint: true,
  //   labelStyle: AppTextStyles.textFiledText,
  //   hintStyle: AppTextStyles.textHint,
  //   errorBorder: OutlineInputBorder(
  //     borderRadius: BorderRadius.all(
  //       Radius.circular(12),
  //     ),
  //     borderSide: BorderSide(color: ThemeColors.errorColor),
  //   ),
  //   border: OutlineInputBorder(
  //     borderRadius: BorderRadius.all(
  //       Radius.circular(12),
  //     ),
  //     borderSide: BorderSide(color: LightThemeColors.scaffoldBackgroundColor),
  //   ),
  //   enabledBorder: OutlineInputBorder(
  //     borderRadius: BorderRadius.all(
  //       Radius.circular(12),
  //     ),
  //     borderSide: BorderSide(color: LightThemeColors.scaffoldBackgroundColor),
  //   ),
  //   focusedBorder: OutlineInputBorder(
  //     borderRadius: BorderRadius.all(
  //       Radius.circular(12),
  //     ),
  //     borderSide: BorderSide(
  //       color: ThemeColors.grey,
  //     ),
  //   ),
  //   disabledBorder: OutlineInputBorder(
  //     borderRadius: BorderRadius.all(
  //       Radius.circular(12),
  //     ),
  //     borderSide: BorderSide(color: LightThemeColors.textFieldBorderColor),
  //   ),
  //   focusedErrorBorder: OutlineInputBorder(
  //     borderRadius: BorderRadius.all(
  //       Radius.circular(12),
  //     ),
  //     borderSide: BorderSide(color: ThemeColors.errorColor),
  //   ),
  //   filled: true,
  //   isDense: true,
  //   fillColor: LightThemeColors.scaffoldBackgroundColor,
  //   floatingLabelAlignment: FloatingLabelAlignment.start,
  //   floatingLabelBehavior: FloatingLabelBehavior.always,
  // ),
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ButtonStyle(
  //     overlayColor: WidgetStateProperty.resolveWith<Color?>(
  //       (Set<WidgetState> states) {
  //         if (states.contains(WidgetState.hovered)) {
  //           return ThemeColors.errorColor;
  //         }
  //         return null;
  //       },
  //     ),
  //     elevation: WidgetStateProperty.all<double>(0),
  //     textStyle: WidgetStateProperty.all<TextStyle>(
  //       const TextStyle(
  //         fontSize: 16,
  //         fontWeight: FontWeight.w700,
  //         color: ThemeColors.white,
  //       ),
  //     ),
  //     foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
  //       if (states.contains(WidgetState.disabled)) {
  //         return LightThemeColors.white;
  //       } else {
  //         return LightThemeColors.white;
  //       }
  //     }),
  //     backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
  //       if (states.contains(WidgetState.disabled)) {
  //         return ThemeColors.disabledColor;
  //       } else {
  //         return ThemeColors.buttonColor;
  //       }
  //     }),
  //     maximumSize: WidgetStateProperty.all<Size>(
  //       const Size(double.infinity, 56),
  //     ),
  //     minimumSize: WidgetStateProperty.all<Size>(
  //       const Size(double.infinity, 56),
  //     ),
  //     shape: WidgetStateProperty.all<RoundedRectangleBorder>(
  //       const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(
  //           Radius.circular(14),
  //         ),
  //       ),
  //     ),
  //   ),
  // ),
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
  // textButtonTheme: TextButtonThemeData(
  //   style: ButtonStyle(
  //     padding: WidgetStateProperty.all(
  //         const EdgeInsets.symmetric(horizontal: 4, vertical: 2)),
  //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  //     elevation: WidgetStateProperty.all<double>(2),
  //     foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
  //       return LightThemeColors.dialogText;
  //     }),
  //     backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
  //       if (states.contains(WidgetState.disabled)) {
  //         return Colors.transparent;
  //       } else {
  //         return Colors.transparent;
  //       }
  //     }),
  //     maximumSize: WidgetStateProperty.all<Size>(
  //       const Size(double.infinity, double.infinity),
  //     ),
  //     minimumSize: WidgetStateProperty.all<Size>(
  //       const Size(double.minPositive, double.minPositive),
  //     ),
  //     shape: WidgetStateProperty.all<RoundedRectangleBorder>(
  //       const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(
  //           Radius.circular(4),
  //         ),
  //       ),
  //     ),
  //     textStyle: WidgetStateProperty.all<TextStyle>(
  //       const TextStyle(
  //         fontSize: 12,
  //         fontWeight: FontWeight.w600,
  //         color: ThemeColors.black,
  //       ),
  //     ),
  //   ),
  // ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.transparent,
    // surfaceTintColor: Colors.transparent,
    modalBackgroundColor: Colors.transparent,
    modalElevation: 0,
    elevation: 0,
  ),
);

// final darkTheme = appTheme.copyWith(
//   scaffoldBackgroundColor: DarkThemeColors.scaffoldBackgroundColor,
//   brightness: Brightness.dark,
//   dividerTheme: appTheme.dividerTheme.copyWith(
//     color: DarkThemeColors.dividerColor,
//   ),
//   appBarTheme: const AppBarTheme(
//     foregroundColor: DarkThemeColors.scaffoldBackgroundColor,
//     backgroundColor: DarkThemeColors.backgroundColor,
//     surfaceTintColor: DarkThemeColors.scaffoldBackgroundColor,
//     elevation: 1,
//     titleTextStyle: TextStyle(
//       fontSize: 18,
//       fontWeight: FontWeight.w600,
//       letterSpacing: 0.01,
//       color: Colors.white,
//     ),
//     toolbarHeight: 56,
//     scrolledUnderElevation: 1,
//   ),
//   colorScheme: const ColorScheme.dark(
//     secondary: Colors.white,
//   ),
//   inputDecorationTheme: const InputDecorationTheme(
//     alignLabelWithHint: true,
//     isDense: true,
//     errorBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.all(
//         Radius.circular(16),
//       ),
//       borderSide: BorderSide(color: ThemeColors.errorColor),
//     ),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.all(
//         Radius.circular(16),
//       ),
//     ),
//     enabledBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.all(
//         Radius.circular(16),
//       ),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.all(
//         Radius.circular(16),
//       ),
//     ),
//     disabledBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.all(
//         Radius.circular(16),
//       ),
//     ),
//     focusedErrorBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.all(
//         Radius.circular(16),
//       ),
//       borderSide: BorderSide(color: ThemeColors.errorColor),
//     ),
//     filled: true,
//     fillColor: LightThemeColors.textFieldColor,
//     floatingLabelAlignment: FloatingLabelAlignment.start,
//     floatingLabelBehavior: FloatingLabelBehavior.always,
//   ),
//   elevatedButtonTheme: ElevatedButtonThemeData(
//     style: ButtonStyle(
//       elevation: WidgetStateProperty.all<double>(2),
//       backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
//         if (states.contains(WidgetState.disabled)) {
//           return ThemeColors.disabledColor;
//         } else {
//           return ThemeColors.primaryColor;
//         }
//       }),
//       maximumSize: WidgetStateProperty.all<Size>(
//         const Size(double.infinity, 56),
//       ),
//       shape: WidgetStateProperty.all<RoundedRectangleBorder>(
//         const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(16),
//           ),
//         ),
//       ),
//     ),
//   ),
//   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//     selectedItemColor: ThemeColors.primaryColor,
//     unselectedItemColor: Colors.white,
//     selectedLabelStyle: TextStyle(
//       fontSize: 11,
//       fontWeight: FontWeight.w400,
//       color: Colors.white,
//     ),
//     unselectedLabelStyle: TextStyle(
//       fontSize: 11,
//       fontWeight: FontWeight.w400,
//       color: Colors.white,
//     ),
//     selectedIconTheme: IconThemeData(
//       color: ThemeColors.primaryColor,
//     ),
//     unselectedIconTheme: IconThemeData(
//       color: ThemeColors.disabledColor,
//     ),
//   ),
// );
