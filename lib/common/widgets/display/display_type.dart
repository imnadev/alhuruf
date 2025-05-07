import 'package:alhuruf/common/extensions/color_extension.dart';
import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/gen/assets.gen.dart';
import 'package:flutter/material.dart';

enum DisplayType { error, warning, info, success }

extension DisplayTypeExtensions on DisplayType {
  Color fill(BuildContext context) {
    switch (this) {
      case DisplayType.error:
        return context.colors.errorFill;
      case DisplayType.warning:
        return context.colors.warningFill;
      case DisplayType.info:
        return context.colors.infoFill;
      case DisplayType.success:
        return context.colors.successFill;
    }
  }

  Color stroke(BuildContext context) {
    switch (this) {
      case DisplayType.error:
        return context.colors.errorStroke;
      case DisplayType.warning:
        return context.colors.warningStroke;
      case DisplayType.info:
        return context.colors.infoStroke;
      case DisplayType.success:
        return context.colors.successStroke;
    }
  }

  Color shadow(BuildContext context) {
    switch (this) {
      case DisplayType.error:
        return context.colors.errorShadow;
      case DisplayType.warning:
        return context.colors.warningShadow;
      case DisplayType.info:
        return context.colors.infoShadow;
      case DisplayType.success:
        return context.colors.successShadow;
    }
  }

  Widget icon(BuildContext context) {
    switch (this) {
      case DisplayType.error:
        return Assets.icons.information.svg(
          colorFilter: context.colors.errorIcon.srcIn,
        );
      case DisplayType.warning:
        return Assets.icons.information.svg(
          colorFilter: context.colors.warningIcon.srcIn,
        );
      case DisplayType.info:
        return Assets.icons.information.svg(
          colorFilter: context.colors.infoIcon.srcIn,
        );
      case DisplayType.success:
        return Assets.icons.information.svg(
          colorFilter: context.colors.successIcon.srcIn,
        );
    }
  }
}
