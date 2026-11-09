import 'package:facebook/core/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldsFacebook extends StatelessWidget {
  const TextFieldsFacebook({
    super.key,
    this.fillColor,
    this.hintColor,
    this.hintFontSize,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
    this.borderRadius,
    this.borderSideWidth,
    this.borderSideColor,
    this.padding,
    this.errorBorderWidth,
    this.errorBorderColor,
    this.cursorColor,
    required this.hintText,
    this.validatorFunction,
    this.isPasswordHidden,
    this.suffixIcon,
  });

  final Color? fillColor;
  final Color? hintColor;
  final double? hintFontSize;
  final Color? fontColor;
  final double? fontSize;
  final int? fontWeight;
  final double? borderRadius;
  final double? borderSideWidth;
  final Color? borderSideColor;
  final double? padding;
  final double? errorBorderWidth;
  final Color? errorBorderColor;
  final Color? cursorColor;
  final String hintText;
  final String? Function(String?)? validatorFunction;
  final bool? isPasswordHidden;
  final IconButton? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: cursorColor ?? AppColors.blue,

      obscureText: isPasswordHidden ?? false,

      style: TextStyle(
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight(fontWeight ?? 400),
        color: fontColor ?? AppColors.black,
      ),

      decoration: InputDecoration(
        suffixIcon: suffixIcon,

        filled: true,
        fillColor: fillColor ?? AppColors.lightBlue,
        hintText: hintText,

        hintStyle: TextStyle(
          color: hintColor ?? AppColors.gray,
          fontSize: hintFontSize ?? 16,
        ),

        contentPadding: EdgeInsets.all(padding ?? 16),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
          borderSide: BorderSide(
            color: borderSideColor ?? AppColors.gray,
            width: borderSideWidth ?? 1,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
          borderSide: BorderSide(
            color: borderSideColor ?? AppColors.gray,
            width: borderSideWidth ?? 2,
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
          borderSide: BorderSide(
            color: errorBorderColor ?? AppColors.red,
            width: errorBorderWidth ?? 2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
          borderSide: BorderSide(
            color: errorBorderColor ?? AppColors.red,
            width: errorBorderWidth ?? 2,
          ),
        ),
      ),
      validator: validatorFunction,
    );
  }
}
