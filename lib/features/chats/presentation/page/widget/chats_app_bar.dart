import 'package:flutter/material.dart';
import 'package:pure_test/core/theme/app_text_styles.dart';
import 'package:pure_test/core/theme/colors/app_colors.dart';
import 'package:pure_test/core/utils/app_utils.dart';
import 'package:pure_test/features/chats/presentation/bottom_sheet/incognito_pans_bottom_sheet_widget.dart';
import 'package:pure_test/generated/l10n.dart';

class ChatsAppBar extends StatelessWidget {
  const ChatsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      toolbarHeight: 200,
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: ThemeColors.scaffoldBackgroundColor,
            borderRadius: AppUtils.kBorderRadiusTop8,
          ),
          child: Padding(
            padding: AppUtils.kPaddingAll16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalization.current.chats,
                  style: AppTextStyles.flightPreferences,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalization.current.off,
                      style: AppTextStyles.plansIncognitoCount,
                    ),
                    AppUtils.kBoxWidth12,
                    InkWell(
                      borderRadius: AppUtils.kBorderRadius64,
                      onTap: () {
                        showModalBottomSheet(
                          useRootNavigator: true,
                          context: context,
                          builder: (_) =>
                              const IncognitoPansBottomSheetWidget(),
                        );
                      },
                      child: Container(
                        padding: AppUtils.kPaddingVer4Hor5,
                        decoration: const BoxDecoration(
                          borderRadius: AppUtils.kBorderRadius64,
                          color: LightThemeColors.backGray,
                        ),
                        child: const Image(
                          image: AssetImage("assets/png/ic_isolate.png"),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
