import 'package:alhuruf/common/extensions/text_extensions.dart';
import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/gen/assets.gen.dart';
import 'package:alhuruf/common/gen/strings.dart';
import 'package:alhuruf/common/router/app_router.gr.dart';
import 'package:alhuruf/common/widgets/button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:management/management.dart';

import 'management/login_management.dart';
import 'management/login_manager.dart';

class LoginSheet extends Managed<LoginManager, LoginState, LoginEffect> {
  const LoginSheet({super.key});

  @override
  void init(context, manager) {}

  @override
  void listener(context, manager, effect) {
    switch (effect) {
      case Home():
        Navigator.of(context).pop();
        context.router.replace(HomeRoute());
        break;
    }
  }

  static Future<void> show(BuildContext context) => showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    backgroundColor: context.colors.onPrimary,
    builder: (_) => LoginSheet(),
  );

  @override
  Widget builder(context, manager, state) {
    return Container(
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
          Button.elevated(
            onPressed: manager.loginWithGoogle,
            backgroundColor: context.colors.primary,
            textColor: context.colors.onPrimary,
            icon: Assets.icons.google.svg(),
            text: Strings.logInGoogle,
          ),
          SizedBox(height: 8),
          Button.elevated(
            onPressed: manager.loginWithApple,
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
    );
  }
}
