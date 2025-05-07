import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    super.key,
    this.onChanged,
    this.controller,
    this.initialValue,
    this.enabled,
    this.hint,
    this.prefixIcon,
    this.obscureText = false,
    this.errorText,
    this.allocateErrorSpace = false,
    this.onTap,
    this.autoFocus = false,
    this.backgroundColor,
    this.mask,
    this.keyboardType,
    this.suffix,
    this.maxLength,
    this.onFocusChanged,
    this.maxLines,
    this.textInputAction = TextInputAction.done,
    this.minLines,
    this.validator,
  });

  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final bool? enabled;
  final String? hint;
  final String? initialValue;
  final Widget? prefixIcon;
  final Widget? suffix;
  final bool obscureText;
  final String? errorText;
  final bool allocateErrorSpace;
  final GestureTapCallback? onTap;
  final bool autoFocus;
  final Color? backgroundColor;
  final String? mask;
  final TextInputType? keyboardType;
  final int? maxLength;
  final ValueChanged<bool>? onFocusChanged;
  final int? maxLines;
  final int? minLines;
  final FormFieldValidator<String>? validator;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  late MaskTextInputFormatter maskFormatter;
  final FocusNode _textFieldFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    maskFormatter = MaskTextInputFormatter(
      mask: widget.mask,
      filter: {"#": RegExp(r'\d')},
      type: MaskAutoCompletionType.lazy,
    );
    _textFieldFocusNode.addListener(() {
      if (widget.onFocusChanged != null) {
        widget.onFocusChanged!(_textFieldFocusNode.hasFocus);
      }
    });
  }

  @override
  void dispose() {
    maskFormatter.clear();
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      initialValue: widget.initialValue,
      maxLength: widget.maxLength,
      focusNode: _textFieldFocusNode,
      enabled: widget.enabled,
      controller: widget.controller,
      autofocus: widget.autoFocus,
      onTap: widget.onTap,
      textAlignVertical: TextAlignVertical.center,
      onChanged:
          widget.onChanged != null
              ? (phone) {
                final number = maskFormatter.unmaskText(phone);
                widget.controller?.text = number;
                widget.onChanged!(number);
              }
              : null,
      validator:
          widget.validator != null
              ? (phone) {
                final number = maskFormatter.unmaskText(phone!);
                return widget.validator!(number);
              }
              : null,
      keyboardType: widget.keyboardType,
      inputFormatters: [maskFormatter],
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        isCollapsed: true,
        suffixIcon: widget.suffix,
        contentPadding: const EdgeInsets.all(14),
        errorText: widget.errorText,
        prefixIcon: widget.prefixIcon,
        hintText: widget.hint,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: context.colors.hint30,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: context.colors.warning),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: context.colors.primary),
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: widget.backgroundColor ?? context.colors.onPrimary,
      ),
      cursorColor: context.colors.primary,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: context.colors.headline,
      ),
    );
  }
}
