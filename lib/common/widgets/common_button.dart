import 'package:alhuruf/common/extensions/text_extensions.dart';
import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/widgets/bouncing_button.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton._(
    this.text,
    this.loading,
    this.enabled,
    this.onPressed,
    this.radius,
    this.type, {
    super.key,
    this.backgroundColor,
    this.textColor,
    this.icon,
    this.padding,
    this.prefixIcon,
  });

  final String text;
  final bool loading;
  final bool enabled;
  final VoidCallback? onPressed;
  final double radius;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? icon;
  final double? padding;
  final CommonButtonType type;
  final Widget? prefixIcon;

  const CommonButton.outlined({
    required String text,
    bool loading = false,
    bool enabled = true,
    VoidCallback? onPressed,
    double radius = 12,
    Color? backgroundColor,
    Color? textColor,
    Key? key,
    Widget? icon,
    double? padding,
  }) : this._(
         text,
         loading,
         enabled,
         onPressed,
         radius,
         CommonButtonType.outlined,
         backgroundColor: backgroundColor,
         textColor: textColor,
         key: key,
         icon: icon,
         padding: padding,
       );

  const CommonButton.elevated({
    required String text,
    bool loading = false,
    bool enabled = true,
    VoidCallback? onPressed,
    Color? backgroundColor,
    Color? textColor,
    Widget? icon,
    double radius = 16,
    Key? key,
    double? padding,
  }) : this._(
         backgroundColor: backgroundColor,
         textColor: textColor,
         text,
         loading,
         enabled,
         onPressed,
         radius,
         CommonButtonType.elevated,
         key: key,
         icon: icon,
         padding: padding,
       );

  const CommonButton.text({
    required String text,
    bool loading = false,
    bool enabled = true,
    VoidCallback? onPressed,
    double radius = 0,
    Key? key,
    double? padding,
    Widget? prefixIcon,
  }) : this._(
         text,
         loading,
         enabled,
         onPressed,
         radius,
         CommonButtonType.text,
         key: key,
         padding: padding,
         prefixIcon: prefixIcon,
       );

  VoidCallback? _onPressed() {
    if (!enabled) return null;
    return () {
      if (loading) return;
      onPressed?.call();
    };
  }

  Widget _child(Color color) {
    return loading
        ? Center(
          child: Container(
            height: 42,
            width: 42,
            padding: const EdgeInsets.all(8),
            child: CircularProgressIndicator(strokeWidth: 3, color: color),
          ),
        )
        : Padding(
          padding: EdgeInsets.symmetric(
            vertical: padding ?? 16.0,
            horizontal: 4,
          ),
          child: Center(
            child:
                icon != null
                    ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        icon!,
                        const SizedBox(width: 6),
                        text
                            .w(600)
                            .s(14)
                            .c(color)
                            .copyWith(
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            ),
                      ],
                    )
                    : text
                        .w(600)
                        .s(14)
                        .c(color)
                        .copyWith(
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
          ),
        );
  }

  Widget _outlined(BuildContext context) {
    return Bouncing(
      onTap: _onPressed(),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: backgroundColor ?? context.colors.primary),
        ),
        child: _child(textColor ?? context.colors.primary),
      ),
    );
  }

  Widget _elevated(BuildContext context) {
    return Bouncing(
      onTap: _onPressed(),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color:
              enabled
                  ? backgroundColor ?? context.colors.primary
                  : context.colors.disable,
        ),
        child: _child(
          enabled
              ? textColor ?? context.colors.onPrimary
              : context.colors.primary,
        ),
      ),
    );
  }

  Widget _text(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(Colors.transparent),
      ),
      onPressed: _onPressed(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(visible: prefixIcon != null, child: prefixIcon!),
          const SizedBox(width: 4),
          Flexible(
            child: text
                .w(600)
                .s(14)
                .c(context.colors.headline)
                .copyWith(maxLines: 1, overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case CommonButtonType.outlined:
        return _outlined(context);
      case CommonButtonType.elevated:
        return _elevated(context);
      case CommonButtonType.text:
        return _text(context);
    }
  }
}

enum CommonButtonType { outlined, elevated, text }
