import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:met2ashara_app/core/theme/app_pallete.dart';

abstract class Styles {
  static TextStyle robotoTextStyle() => const TextStyle(fontFamily: 'Roboto');
  static TextStyle quattrocentoTextStyle() =>const  TextStyle(fontFamily: 'Quattrocento');
  
  static TextStyle roboto700(
      {required double fontSize, Color color = AppPalette.whiteColor}) {
    return robotoTextStyle().copyWith(
        fontSize: fontSize.sp, fontWeight: FontWeight.w700, color: color);
  }
  static TextStyle roboto600(
      {required double fontSize, Color color = AppPalette.black}) {
    return robotoTextStyle().copyWith(
        fontSize: fontSize.sp, fontWeight: FontWeight.w600, color: color);
  }
  static TextStyle roboto500(
      {required double fontSize, Color color = AppPalette.black}) {
    return robotoTextStyle().copyWith(
        fontSize: fontSize.sp, fontWeight: FontWeight.w600, color: color);
  }
  static TextStyle roboto400(
      {required double fontSize, Color color = AppPalette.greyColor}) {
    return robotoTextStyle().copyWith(
        fontSize: fontSize.sp, fontWeight: FontWeight.w400, color: color);
  }

  static TextStyle quattrocento700(
      {required double fontSize, Color color = AppPalette.primary}) {
    return quattrocentoTextStyle().copyWith(
        fontSize: fontSize.sp, fontWeight: FontWeight.w700, color: color);
  }
}