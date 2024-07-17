import 'package:flutter/material.dart';
import 'package:pure_test/core/theme/app_text_styles.dart';
import 'package:pure_test/core/theme/colors/app_colors.dart';
import 'package:pure_test/core/utils/app_utils.dart';
import 'package:pure_test/generated/l10n.dart';

class IncognitoPlanItemWidget extends StatelessWidget {
  final String incognitoCount;
  final String? incognitoPromotion;

  const IncognitoPlanItemWidget({
    super.key,
    required this.incognitoCount,
    this.incognitoPromotion,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 78,
              padding: AppUtils.kPaddingVer16Hor30,
              decoration: BoxDecoration(
                color: ThemeColors.scaffoldBackgroundColor,
                borderRadius: AppUtils.kBorderRadius8,
                border: Border.all(
                  color: LightThemeColors.borderColor,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        incognitoCount,
                        style: AppTextStyles.plansIncognitoCount,
                      ),
                      AppUtils.kBoxWidth4,
                      const Image(
                        height: 18,
                        image: AssetImage("assets/png/ic_isolate.png"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 0,
            left: 20,
            right: 20,
            bottom: 65,
            child: ClipOval(
              clipBehavior: Clip.hardEdge,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    radius: 1.5,
                    stops: [
                      0.0,
                      0.25,
                      0.75,
                      1.0,
                    ],
                    center: Alignment.center,
                    colors: [
                      Color(0XFFFF7D00),
                      Color(0XFFFF5700),
                      Color(0XFFFF2900),
                      Color(0XFFFF0000),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    AppLocalization.current.top,
                    style: AppTextStyles.bestSellerStyle,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
