import 'package:alhuruf/common/extensions/text_extensions.dart';
import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/gen/assets.gen.dart';
import 'package:alhuruf/common/gen/strings.dart';
import 'package:alhuruf/common/widgets/common_button.dart';
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key, required this.retry, this.error});

  final VoidCallback retry;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      margin: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
      decoration: BoxDecoration(
        color: context.colors.onPrimary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.information.svg(height: 72),
            const SizedBox(height: 36),
            (error ?? Strings.errorOccured)
                .w(600)
                .s(22)
                .c(context.colors.headline)
                .copyWith(textAlign: TextAlign.center),
            const SizedBox(height: 36),
            CommonButton.elevated(onPressed: retry, text: Strings.retry),
          ],
        ),
      ),
    );
  }
}
