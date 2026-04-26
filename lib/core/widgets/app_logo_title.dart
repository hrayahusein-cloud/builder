import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/styles.dart';

class AppLogoTitle extends StatelessWidget {
  const AppLogoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/logo-app.png', height: 32.h, width: 32.w),
        horizontalSpace(10),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Buil',
                style: TextStyles.font16BoldRubyOrange().copyWith(
                  letterSpacing: 1.5,
                ),
              ),
              TextSpan(
                text: 'der ',
                style: TextStyles.font16BoldOceanTeal().copyWith(
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
