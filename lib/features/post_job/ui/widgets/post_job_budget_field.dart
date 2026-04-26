import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/styles.dart';

import '../../../../core/theme/colors.dart';

class PostJobBudgetField extends StatelessWidget {
  const PostJobBudgetField({super.key});
  final String hint = '1000 ل.س';
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      style: TextStyles.font14Medium(),

      decoration: InputDecoration(
        hintText: hint,
        suffixText: '\$',
        suffixStyle: TextStyles.font12MediumStoneGray(),
        filled: true,
        fillColor: ColorsManager.grey.withValues(alpha: 0.5),
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
