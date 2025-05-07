import 'package:alhuruf/common/extensions/text_extensions.dart';
import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/gen/assets.gen.dart';
import 'package:alhuruf/common/gen/strings.dart';
import 'package:alhuruf/common/router/app_router.gr.dart';
import 'package:alhuruf/common/widgets/base_app_bar.dart';
import 'package:alhuruf/common/widgets/common_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:management/management.dart';

import 'management/login_management.dart';
import 'management/login_manager.dart';

@RoutePage()
class LoginPage extends Managed<LoginManager, LoginState, LoginEffect> {
  const LoginPage({super.key});

  @override
  void init(context, manager) {}

  @override
  void listener(context, manager, effect) {}

  @override
  Widget builder(context, manager, state) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      appBar: BaseAppBar(
        actions: [
          GestureDetector(
            onTap: () => context.router.push(HomeRoute()),
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(right: 16, top: 16),
              decoration: BoxDecoration(
                color: context.colors.onPrimary20,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Strings.skip.w(600).s(14).c(context.colors.onPrimary),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            children: [
              Spacer(),
              Assets.icons.profile.image(),
              SizedBox(height: 32),
              Strings.logInContinue
                  .w(600)
                  .s(28)
                  .c(context.colors.onPrimary)
                  .copyWith(textAlign: TextAlign.center),
              SizedBox(height: 8),
              Strings.logInToImprove
                  .w(400)
                  .s(14)
                  .c(context.colors.onPrimary)
                  .copyWith(textAlign: TextAlign.center),
              SizedBox(height: 32),
              CommonButton.elevated(
                backgroundColor: context.colors.onPrimary,
                textColor: context.colors.headline,
                text: Strings.logInProfile,
                onPressed: () => loginSheet(context),
              ),
              SizedBox(height: 8),
              CommonButton.elevated(
                backgroundColor: context.colors.onPrimary20,
                textColor: context.colors.onPrimary,
                text: Strings.later,
                onPressed: () {},
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loginSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      backgroundColor: context.colors.onPrimary,
      builder:
          (_) => Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: Assets.icons.cancelCircle.svg(),
                  ),
                ),
                SizedBox(height: 16),
                Strings.logInProfile.w(600).s(28).c(context.colors.headline),
                SizedBox(height: 8),
                Strings.logInToImprove
                    .w(400)
                    .s(14)
                    .c(context.colors.label)
                    .copyWith(textAlign: TextAlign.center),
                SizedBox(height: 24),
                CommonButton.elevated(
                  backgroundColor: context.colors.primary,
                  textColor: context.colors.onPrimary,
                  icon: Assets.icons.google.svg(),
                  text: Strings.logInGoogle,
                  onPressed: () {},
                ),
                SizedBox(height: 8),
                CommonButton.elevated(
                  backgroundColor: context.colors.hint30,
                  textColor: context.colors.headline,
                  icon: Assets.icons.apple.svg(),
                  text: Strings.logApple,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Strings.privacyPolicy
                      .w(400)
                      .s(10)
                      .c(context.colors.label)
                      .copyWith(textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
    );
  }
}
