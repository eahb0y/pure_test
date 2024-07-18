import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pure_test/core/theme/app_text_styles.dart';
import 'package:pure_test/core/theme/colors/app_colors.dart';
import 'package:pure_test/core/utils/app_utils.dart';
import 'package:pure_test/features/chats/presentation/page/widget/chats_app_bar.dart';
import 'package:pure_test/router/app_routes.dart';
import 'package:pure_test/router/name_routes.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ChatsAppBar(),
          AppUtils.kGap16,
          SliverToBoxAdapter(
            child: ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
                backgroundColor: LightThemeColors.leadingImageBack,
                child: SvgPicture.asset("assets/svg/ic_favourites.svg"),
              ),
              title: const Text(
                "44 человека тебя лайкнули",
                style: AppTextStyles.likedListText,
              ),
              trailing: SvgPicture.asset("assets/svg/ic_dot.svg"),
            ),
          ),
          AppUtils.kGap16,
          SliverList.separated(
            itemBuilder: (_, index) => Padding(
              padding: AppUtils.kPaddingHor16,
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(
                      rootNavigatorKey.currentContext!, Routes.conversation);
                },
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  maxRadius: 30,
                  backgroundColor: LightThemeColors.leadingImageBack,
                  child: SvgPicture.asset("assets/svg/ic_favourites.svg"),
                ),
                title: const Text(
                  "23 ч 43 мин",
                  style: AppTextStyles.massageTime,
                ),
                subtitle: const Text(
                  "Встретимся? Я рядом",
                  style: AppTextStyles.lastMassage,
                ),
              ),
            ),
            separatorBuilder: (_, __) => AppUtils.kBoxHeight16,
            itemCount: 10,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).padding.bottom + 10,
            ),
          ),
        ],
      ),
    );
  }
}
