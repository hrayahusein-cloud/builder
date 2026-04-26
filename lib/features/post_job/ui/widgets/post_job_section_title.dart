import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/styles.dart';

class PostJobSectionTitle extends StatelessWidget {
  final String title;
  const PostJobSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 14.h, bottom: 8.h, start: 15.w),
      child: Text(title, style: TextStyles.font16Medium()),
    );
  }
}
