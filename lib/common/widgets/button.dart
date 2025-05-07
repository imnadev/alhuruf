import 'dart:async';

import 'package:alhuruf/common/extensions/text_extensions.dart';
import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/widgets/animated_detector.dart';
import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';

class Button extends StatefulWidget {
  const Button._(
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
  final FutureOr<void> Function()? onPressed;
  final double radius;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? icon;
  final double? padding;
  final CommonButtonType type;
  final Widget? prefixIcon;

  const Button.outlined({
    super.key,
    required this.text,
    this.loading = false,
    this.enabled = true,
    this.onPressed,
    this.radius = 12,
    this.backgroundColor,
    this.textColor,
    this.icon,
    this.padding,
    this.prefixIcon,
  }) : type = CommonButtonType.outlined;

  const Button.elevated({
    super.key,
    required this.text,
    this.loading = false,
    this.enabled = true,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.icon,
    this.radius = 16,
    this.padding,
    this.prefixIcon,
  }) : type = CommonButtonType.elevated;

  const Button.text({
    super.key,
    required this.text,
    this.loading = false,
    this.enabled = true,
    this.onPressed,
    this.radius = 0,
    this.padding,
    this.prefixIcon,
    this.backgroundColor,
    this.textColor,
    this.icon,
  }) : type = CommonButtonType.text;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  late bool _loading;

  CancelableOperation? operation;

  @override
  void initState() {
    _loading = widget.loading;
    super.initState();
  }

  @override
  void didUpdateWidget(Button oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.loading != oldWidget.loading) {
      setState(() => _loading = widget.loading);
    }
  }

  void _onPressed() async {
    if (!widget.enabled || _loading || widget.onPressed == null) return;
    final result = widget.onPressed!();

    if (result is Future) {
      operation = CancelableOperation.fromFuture(result);
      setState(() => _loading = true);
      await operation!.valueOrCancellation();
      setState(() => _loading = false);
      operation = null;
    }
  }

  Widget _child(Color color) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Visibility(
          visible: !_loading,
          maintainSize: true,
          maintainState: true,
          maintainAnimation: true,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: widget.padding ?? 16.0,
              horizontal: 4,
            ),
            child: Center(
              child:
                  widget.icon != null
                      ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          widget.icon!,
                          const SizedBox(width: 6),
                          widget.text
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
                      : widget.text
                          .w(600)
                          .s(14)
                          .c(color)
                          .copyWith(
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
            ),
          ),
        ),
        if (_loading) Center(child: CupertinoActivityIndicator(color: color)),
      ],
    );
  }

  Widget _outlined(BuildContext context) {
    return AnimatedDetector(
      onTap: _onPressed,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius),
          border: Border.all(
            color: widget.backgroundColor ?? context.colors.primary,
          ),
        ),
        child: _child(widget.textColor ?? context.colors.primary),
      ),
    );
  }

  Widget _elevated(BuildContext context) {
    return AnimatedDetector(
      onTap: _onPressed,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius),
          color:
              widget.enabled
                  ? widget.backgroundColor ?? context.colors.primary
                  : context.colors.disable,
        ),
        child: _child(
          widget.enabled
              ? widget.textColor ?? context.colors.onPrimary
              : context.colors.primary,
        ),
      ),
    );
  }

  Widget _text(BuildContext context) {
    return AnimatedDetector(
      onTap: _onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: widget.prefixIcon != null,
            child: widget.prefixIcon!,
          ),
          const SizedBox(width: 4),
          Flexible(
            child: widget.text
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
    switch (widget.type) {
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
