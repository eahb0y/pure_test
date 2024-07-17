import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_test/core/theme/app_text_styles.dart';
import 'package:pure_test/core/theme/colors/app_colors.dart';
import 'package:pure_test/core/utils/app_utils.dart';
import 'package:pure_test/features/home/presentation/bottom_sheet/widget/incognito_plan_item_widget.dart';
import 'package:pure_test/generated/l10n.dart';

class IncognitoPansBottomSheetWidget extends StatelessWidget {
  const IncognitoPansBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: LightThemeColors.dartBlue,
      child: Padding(
        padding: AppUtils.kPaddingAll16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [SvgPicture.asset("assets/svg/ic_cancel.svg")],
            ),
            Image(
              height: 68,
              image: AssetImage("assets/png/ic_incognito.png"),
            ),
            AppUtils.kBoxHeight22,
            Text(
              AppLocalization.current.incognito_mode,
              style: AppTextStyles.incognitoTitleStyle,
            ),
            AppUtils.kBoxHeight24,
            Text(
              AppLocalization.current.incognito_mode_desc,
              style: AppTextStyles.descStyle,
            ),
            AppUtils.kBoxHeight24,
            const Row(
              children: [
                Expanded(
                  child: IncognitoPlanItemWidget(
                    incognitoCount: "1",
                  ),
                ),
                AppUtils.kBoxWidth16,
                Expanded(
                  child: IncognitoPlanItemWidget(
                    incognitoCount: "1",
                  ),
                ),
                AppUtils.kBoxWidth16,
                Expanded(
                  child: IncognitoPlanItemWidget(
                    incognitoCount: "1",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
