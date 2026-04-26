import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/styles.dart';
import '../../../../core/theme/colors.dart';

class PostJobSubmitButton extends StatelessWidget {
  const PostJobSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: SizedBox(
          height: 52.h,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.rubyOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.r),
              ),
              elevation: 2,
            ),
            onPressed: () {},
            child: Text('نشر الطلب', style: TextStyles.font16RegularWhite()),
          ),
        ),
      ),
    );
  }
}
