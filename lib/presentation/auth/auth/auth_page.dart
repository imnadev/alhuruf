import 'package:alhuruf/common/extensions/text_extensions.dart';
import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/gen/assets.gen.dart';
import 'package:alhuruf/common/gen/strings.dart';
import 'package:alhuruf/common/widgets/button.dart';
import 'package:alhuruf/presentation/auth/login/login_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:management/management.dart';

import 'management/auth_management.dart';
import 'management/auth_manager.dart';

@RoutePage()
class AuthPage extends Managed<AuthManager, AuthState, AuthEffect> {
  const AuthPage({super.key});

  @override
  void init(context, manager) {}

  @override
  void listener(context, manager, effect) {}

  @override
  Widget builder(context, manager, state) {
    return Scaffold(
      backgroundColor: context.colors.primary,
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
              Button.elevated(
                backgroundColor: context.colors.onPrimary,
                textColor: context.colors.headline,
                text: Strings.logInProfile,
                onPressed: () => LoginSheet.show(context),
              ),
              SizedBox(height: 8),
              Button.elevated(
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
}
