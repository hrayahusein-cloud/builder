import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';

class PostJobTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextEditingController controller;
  const PostJobTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.textStyle,
    this.hintStyle,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      maxLines: maxLines,
      style: textStyle,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: hintStyle,
        filled: true,
        fillColor: ColorsManager.grey.withValues(alpha: 0.5),
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 18.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
