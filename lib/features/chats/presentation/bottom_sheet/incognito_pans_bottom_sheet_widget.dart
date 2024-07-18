import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_test/core/theme/app_text_styles.dart';
import 'package:pure_test/core/theme/colors/app_colors.dart';
import 'package:pure_test/core/utils/app_utils.dart';
import 'package:pure_test/features/chats/presentation/bottom_sheet/widget/incognito_plan_item_widget.dart';
import 'package:pure_test/generated/l10n.dart';

class IncognitoPansBottomSheetWidget extends StatelessWidget {
  const IncognitoPansBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: LightThemeColors.dartBlue,
      child: Padding(
        padding: AppUtils.kPaddingAll16,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset("assets/svg/ic_cancel.svg")),
              ],
            ),
            const Image(
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
            Row(
              children: [
                const Expanded(
                  child: IncognitoPlanItemWidget(
                    incognitoCount: "1",
                    planPrice: "99",
                  ),
                ),
                AppUtils.kBoxWidth16,
                Expanded(
                  child: IncognitoPlanItemWidget(
                    incognitoCount: "3",
                    planPrice: "199",
                    incognitoPromotion: AppLocalization.current.top,
                  ),
                ),
                AppUtils.kBoxWidth16,
                const Expanded(
                  child: IncognitoPlanItemWidget(
                    incognitoCount: "1",
                    planPrice: "399",
                    incognitoPromotion: "-42%",
                  ),
                ),
              ],
            ),
            AppUtils.kBoxHeight16,
            ElevatedButton(
              onPressed: () {},
              child: Text(AppLocalization.current.buy),
            ),
            AppUtils.kBoxHeight24,
            TextButton(
              onPressed: () {},
              child: Text(AppLocalization.current.status),
            )
          ],
        ),
      ),
    );
  }
}
