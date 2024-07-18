import 'package:flutter/material.dart';
import 'package:pure_test/core/theme/colors/app_colors.dart';

class AppUtils {
  AppUtils._();

  static const kGap16 = SliverToBoxAdapter(child: kBoxHeight16);
  static const kGap50 = SliverToBoxAdapter(child: kBoxHeight50);

  /// Sizedbox
  static const kBoxHeight16 = SizedBox(height: 16);
  static const kBoxHeight22 = SizedBox(height: 22);
  static const kBoxHeight24 = SizedBox(height: 24);
  static const kBoxHeight50 = SizedBox(height: 50);

  static const kBoxWidth8 = SizedBox(width: 8);
  static const kBoxWidth12 = SizedBox(width: 12);
  static const kBoxWidth16 = SizedBox(width: 16);

  /// padding
  static const kPaddingVer10 =
  EdgeInsets.symmetric(vertical: 10);
  static const kPaddingAll6 = EdgeInsets.all(6);
  static const kPaddingHorizontal16Vertical8 =
  EdgeInsets.symmetric(horizontal: 16.0, vertical: 8);

  static const kPaddingAll16 = EdgeInsets.all(16);

  static const kPaddingB24 = EdgeInsets.only(
    bottom: 24,
  );


  static const kPaddingHor32Ver20 =
  EdgeInsets.symmetric(horizontal: 32, vertical: 20);
  static const kPaddingHor16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingHor12 = EdgeInsets.symmetric(horizontal: 12);
  static const kPaddingHor8Ver4 =
  EdgeInsets.symmetric(horizontal: 8, vertical: 4);
  static const kPaddingVer10Hor16 =
  EdgeInsets.symmetric(vertical: 10, horizontal: 16);
  static const kPaddingVer4Hor5 =
  EdgeInsets.symmetric(vertical: 4, horizontal: 5);
  static const kPaddingVer2Hor8 =
  EdgeInsets.symmetric(vertical: 2, horizontal: 8);
  static const kPaddingVer2Hor10 =
  EdgeInsets.symmetric(vertical: 2, horizontal: 10);
  static const kPaddingVer16Hor30 =
  EdgeInsets.symmetric(vertical: 16, horizontal: 30);
  static const kPaddingVer12Hor14 =
  EdgeInsets.symmetric(vertical: 12, horizontal: 14);
  static const kPaddingVer28Hor28 =
  EdgeInsets.symmetric(vertical: 28, horizontal: 28);

  /// border radius
  static const kRadius = Radius.zero;
  static const kRadius12 = Radius.circular(12);
  static const kBorderRadius8 = BorderRadius.all(Radius.circular(8));
  static const kBorderRadiusTop8 = BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(8),
  );
  static const kBorderRadius64 = BorderRadius.all(Radius.circular(64));
  static const kBoxDecorationTop = BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
    ),
    color: LightThemeColors.grey,
  );
}
