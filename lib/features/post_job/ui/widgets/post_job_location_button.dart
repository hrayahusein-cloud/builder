import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/styles.dart';
import '../../../../core/theme/colors.dart';

class PostJobLocationButton extends StatelessWidget {
  const PostJobLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52.h,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.rubyOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
          elevation: 0,
        ),
        onPressed: () {},
        icon: Icon(Icons.location_on, size: 20.sp, color: ColorsManager.white),
        label: Text('انتقل إلى الخريطة', style: TextStyles.font12BoldWhite()),
      ),
    );
  }
}
