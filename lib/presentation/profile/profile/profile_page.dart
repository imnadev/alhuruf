import 'package:alhuruf/common/extensions/text_extensions.dart';
import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/gen/assets.gen.dart';
import 'package:alhuruf/common/gen/strings.dart';
import 'package:alhuruf/common/router/app_router.gr.dart';
import 'package:alhuruf/common/widgets/base_app_bar.dart';
import 'package:alhuruf/common/widgets/button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:management/management.dart';

import 'management/profile_management.dart';
import 'management/profile_manager.dart';

@RoutePage()
class ProfilePage extends Managed<ProfileManager, ProfileState, ProfileEffect> {
  const ProfilePage({super.key});

  @override
  void init(context, manager) {}

  @override
  void listener(context, manager, effect) {
    switch (effect) {
      case Auth():
        context.router.replaceAll([AuthRoute()]);
        break;
    }
  }

  @override
  Widget builder(context, manager, state) {
    return Scaffold(
      appBar: BaseAppBar(
        title: Strings.profile,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Column(
            children: [
              'Xayrulloh Muhammad'.w(600).s(24).c(context.colors.onPrimary50),
              'xayrullohmuhammad@gmail.com'
                  .w(600)
                  .s(16)
                  .c(context.colors.onPrimary50),
              'ID-1000100'.w(600).s(16).c(context.colors.onPrimary50),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.colors.onPrimary,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () => context.router.push(SettingsRoute()),
                  child: _profileView(
                    context: context,
                    leading: Assets.icons.settings.svg(),
                    title: Strings.settings,
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => context.router.push(PaymentRoute()),
                  child: _profileView(
                    context: context,
                    leading: Assets.icons.subscribtion.svg(),
                    title: Strings.subscription,
                    subtitle: '15.01.2026',
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => context.router.push(SettingsRoute()),
                  child: _profileView(
                    context: context,
                    leading: Assets.icons.settings.svg(),
                    title: Strings.settings,
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => context.router.push(SettingsRoute()),
                  child: _profileView(
                    context: context,
                    leading: Assets.icons.money.svg(),
                    title: Strings.donate,
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => _logout(context, manager),
                  child: _profileView(
                    context: context,
                    leading: Assets.icons.logout.svg(),
                    title: Strings.logOut,
                  ),
                ),
                Divider(),
              ],
            ),
          ),
          SizedBox(height: 16),
          Strings.version(
            version: '1.0.0',
          ).w(500).s(16).c(context.colors.label),
        ],
      ),
    );
  }

  Widget _profileView({
    required BuildContext context,
    required Widget leading,
    required String title,
    String? subtitle,
  }) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          leading,
          SizedBox(width: 4),
          title.w(500).s(16).c(context.colors.headline),
          Spacer(),
          if (subtitle != null)
            Strings.paidUntil(
              date: subtitle,
            ).w(500).s(14).c(context.colors.info),
          SizedBox(width: 4),
          Assets.icons.circleArrow.svg(),
        ],
      ),
    );
  }

  Future<void> _logout(BuildContext context, ProfileManager manager) {
    return showDialog(
      context: context,
      builder:
          (context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.icons.sad.svg(),
                  const SizedBox(height: 8),
                  Strings.wantLeave
                      .w(600)
                      .s(24)
                      .c(context.colors.headline)
                      .copyWith(textAlign: TextAlign.center),
                  const SizedBox(height: 8),
                  Strings.leaveLose
                      .w(500)
                      .s(16)
                      .c(context.colors.label)
                      .copyWith(textAlign: TextAlign.center),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Button.elevated(
                          backgroundColor: context.colors.window,
                          textColor: context.colors.headline,
                          text: Strings.exit,
                          onPressed: () async {
                            await manager.logout();
                            if (context.mounted) {
                              Navigator.of(context).pop();
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Button.elevated(
                          text: Strings.cancellation,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
