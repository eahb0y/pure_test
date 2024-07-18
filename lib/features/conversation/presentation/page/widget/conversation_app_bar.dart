import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_test/core/theme/app_text_styles.dart';
import 'package:pure_test/core/theme/colors/app_colors.dart';
import 'package:pure_test/core/utils/app_utils.dart';
import 'package:pure_test/features/conversation/presentation/bloc/conversation_bloc.dart';

class ConversationAppBar extends StatelessWidget {
  final bool isHidden;

  const ConversationAppBar({
    super.key,
    required this.isHidden,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      title: CircleAvatar(
        maxRadius: 15,
        backgroundColor: LightThemeColors.leadingImageBack,
        child: SvgPicture.asset("assets/svg/ic_favourites.svg"),
      ),
      centerTitle: false,
      // pinned: true,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/svg/ic_dots.svg"),
          tooltip: 'Balance',
          onPressed: () {},
        ),
      ],
      bottom: isHidden
          ? PreferredSize(
              preferredSize: const Size(double.infinity, 40),
              child: Column(
                children: [
                  ListTile(
                    leading: const Image(
                      image: AssetImage("assets/png/ic_racket.png"),
                      width: 21,
                    ),
                    tileColor: LightThemeColors.purple,
                    title: const Text(
                      "2 общих соблазна",
                      style: AppTextStyles.appBatBottomText,
                    ),
                    trailing: InkWell(
                      borderRadius: AppUtils.kBorderRadius64,
                      onTap: () {
                        context
                            .read<ConversationBloc>()
                            .add(HideNotificationEvent(isHidden: isHidden));
                      },
                      child: SvgPicture.asset(
                        "assets/svg/ic_cancel.svg",
                        colorFilter: const ColorFilter.mode(
                          ThemeColors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  AppUtils.kBoxHeight16,
                ],
              ),
            )
          : const PreferredSize(
              preferredSize: Size(0, 0),
              child: SizedBox(),
            ),
    );
  }
}
