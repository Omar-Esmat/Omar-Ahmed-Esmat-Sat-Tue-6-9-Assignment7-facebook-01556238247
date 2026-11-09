import 'package:facebook/core/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';

abstract class ElevatedButtonsData {}

class ElevatedButtonFacebook extends StatelessWidget {
  const ElevatedButtonFacebook({
    super.key,
    this.backgroundColor,
    this.foregroundColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.overlayColor,
    this.borderRadius,
    this.padding,
    this.onTap,
    this.childText,
    this.sideColor,
  });
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? fontSize;
  final int? fontWeight;
  final Alignment? textAlign;
  final Color? overlayColor;
  final Color? sideColor;
  final double? borderRadius;
  final double? padding;
  final void Function()? onTap;
  final String? childText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.blue,
        foregroundColor: foregroundColor ?? AppColors.white,
        overlayColor: overlayColor ?? Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(borderRadius ?? 16),
        ),
        padding: EdgeInsets.all(padding ?? 16),
        side: BorderSide(color: sideColor ?? AppColors.blue),
      ),
      onPressed: onTap,
      child: Center(
        child: Text(
          childText ?? '',
          style: TextStyle(
            fontSize: fontSize ?? 20,
            fontWeight: FontWeight(fontWeight ?? 400),
          ),
        ),
      ),
    );
  }
}
