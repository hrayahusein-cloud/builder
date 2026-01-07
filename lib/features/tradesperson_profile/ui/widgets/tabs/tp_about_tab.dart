import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/styles.dart';

class TPAboutTab extends StatelessWidget {
  final String title;
  final String body;

  const TPAboutTab({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyles.font14Bold()),
        verticalSpace(8),
        Padding(
          padding: EdgeInsetsDirectional.only(end: 50.w),
          child: Text(
            body,
            style: TextStyles.font14Medium().copyWith(height: 1.7.h),
          ),
        ),
      ],
    );
  }
}
