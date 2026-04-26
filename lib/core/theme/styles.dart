import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24BoldWhite() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.white,
    );
  }

  static TextStyle font24Bold() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
    );
  }

  static TextStyle font10Bold() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 10.sp,
      fontWeight: FontWeightHelper.bold,
    );
  }

  //font10Medium
  static TextStyle font10Medium() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 10.sp,
      fontWeight: FontWeightHelper.medium,
    );
  }

  static TextStyle font10MediumGrey() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 10.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.grey,
    );
  }

  static TextStyle font24BoldOceanTeal() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.oceanTeal,
    );
  }

  static TextStyle font20MediumdRubyOrange() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.rubyOrange,
    );
  }

  static TextStyle font14BoldrRubyOrange() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.rubyOrange,
    );
  }

  static TextStyle font14Bold() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.bold,
    );
  }

  static TextStyle font14Medium() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
    );
  }

  static TextStyle font14SemiBold() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  // static TextStyle font16Bold() {
  //   return TextStyle(
  //     fontFamily: 'Cairo',
  //     fontSize: 16.sp,
  //     fontWeight: FontWeightHelper.bold,
  //   );
  // }

  static TextStyle font12Medium() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.medium,
    );
  }

  static TextStyle font12BoldWhite() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.white,
    );
  }

  static TextStyle font12Bold() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.bold,
    );
  }

  static TextStyle font12SemiBold() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle font12BoldRubyOrange() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.rubyOrange,
    );
  }

  static TextStyle font12MediumStoneGray() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.stoneGray,
    );
  }

  static TextStyle font16Medium() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 16.sp,

      fontWeight: FontWeightHelper.medium,
    );
  }

  static TextStyle font16semiBold() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 16.sp,

      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle font16MediumStoneGray() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.stoneGray,
    );
  }

  static TextStyle font16BoldOceanTeal() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 16.sp,
      color: ColorsManager.oceanTeal,
      fontWeight: FontWeightHelper.bold,
    );
  }

  static TextStyle font16BoldRubyOrange() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 16.sp,
      color: ColorsManager.rubyOrange,
      fontWeight: FontWeightHelper.bold,
    );
  }

  static TextStyle font16RegularWhite() {
    return TextStyle(
      fontFamily: 'Cairo',
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorsManager.white,
    );
  }

  static TextStyle title16(BuildContext context) => TextStyle(
    fontFamily: 'Cairo',
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: Theme.of(context).colorScheme.onBackground,
  );

  static TextStyle body12(BuildContext context) => TextStyle(
    fontFamily: 'Cairo',
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: Theme.of(context).colorScheme.onBackground.withOpacity(0.75),
  );
}
