import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_test/core/theme/app_text_styles.dart';
import 'package:pure_test/core/theme/colors/app_colors.dart';
import 'package:pure_test/core/utils/app_utils.dart';
import 'package:pure_test/features/conversation/presentation/bloc/conversation_bloc.dart';
import 'package:pure_test/features/conversation/presentation/page/widget/conversation_app_bar.dart';
import 'package:pure_test/generated/l10n.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConversationBloc, ConversationState>(
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              ConversationAppBar(
                isHidden: state.isHidden,
              ),
              AppUtils.kGap50,
              SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    AppLocalization.current.start_conversation,
                    style: AppTextStyles.emptyConverText,
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: SafeArea(
            minimum: AppUtils.kPaddingB24.copyWith(
                bottom: MediaQuery.of(context).viewInsets.bottom + 24),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/svg/ic_plus.svg")),
                AppUtils.kBoxWidth8,
                Expanded(
                  child: TextField(
                    cursorColor: LightThemeColors.borderColor,
                    decoration: InputDecoration(
                        hintText: AppLocalization.current.massage,
                        suffixIcon: Padding(
                          padding: AppUtils.kPaddingHor12,
                          child: SvgPicture.asset("assets/svg/ic_maskot.svg"),
                        )),
                  ),
                ),
                AppUtils.kBoxWidth8,
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svg/ic_mic.svg"),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
