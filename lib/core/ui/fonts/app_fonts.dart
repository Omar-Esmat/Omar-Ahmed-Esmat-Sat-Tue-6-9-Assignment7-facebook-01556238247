import 'package:facebook/core/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';

TextStyle titleLarge({double? size, int? weight, Color? textColor}) {
  return TextStyle(
    fontSize: size ?? 24,
    fontWeight: FontWeight(weight ?? 700),
    color: textColor ?? AppColors.black,
  );
}

TextStyle titleMedium({double? size, int? weight, Color? textColor}) {
  return TextStyle(
    fontSize: size ?? 16,
    fontWeight: FontWeight(weight ?? 700),
    color: textColor ?? AppColors.black,
  );
}

TextStyle bodyLarge({double? size, int? weight, Color? textColor}) {
  return TextStyle(
    fontSize: size ?? 16,
    fontWeight: FontWeight(weight ?? 400),
    color: textColor ?? AppColors.gray,
  );
}
