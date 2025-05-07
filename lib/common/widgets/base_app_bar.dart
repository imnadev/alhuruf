import 'package:alhuruf/common/extensions/text_extensions.dart';
import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    super.key,
    this.title,
    this.actions,
    this.centerTitle,
    this.leading,
    this.bottom,
  });

  final String? title;
  final bool? centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    final canPop = context.router.stack.length > 1;
    return AppBar(
      leading: leading ?? (canPop ? leadingView(context) : null),
      centerTitle: centerTitle ?? true,
      title: (title ?? '').w(600).s(18).c(context.colors.onPrimary),
      backgroundColor: context.colors.primary,
      actions: actions,
      elevation: 0,
      bottom: bottom,
    );
  }

  Widget leadingView(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.maybePop(),
      child: Padding(
        padding: const EdgeInsets.all(8).copyWith(left: 16),
        child: Assets.icons.back.svg(
          colorFilter: ColorFilter.mode(
            context.colors.onPrimary,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(bottom != null ? 140 : 48);
}
