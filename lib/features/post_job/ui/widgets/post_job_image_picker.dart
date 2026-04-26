import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/styles.dart';

import '../../../../core/theme/colors.dart';

class PostJobImagePicker extends StatelessWidget {
  const PostJobImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      decoration: BoxDecoration(
        color: ColorsManager.grey.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                color: ColorsManager.white,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Icon(
                Icons.add,
                size: 26.sp,
                color: ColorsManager.rubyOrange,
              ),
            ),
            SizedBox(height: 8.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: ColorsManager.rubyOrange),
                color: ColorsManager.white,
              ),
              child: Text('اختر من الملفات', style: TextStyles.font10Medium()),
            ),
          ],
        ),
      ),
    );
  }
}
