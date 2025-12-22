import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/styles.dart';

class TPReviewsTab extends StatelessWidget {
  final String body;

  const TPReviewsTab({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.5.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 16.r,
                backgroundColor: ColorsManager.lightGrayBackground,
                child: Icon(
                  Icons.person,
                  size: 20.sp,
                  color: ColorsManager.black54,
                ),
              ),
              horizontalSpace(8),
              Text(
                body,
                textAlign: TextAlign.right,
                style: TextStyles.font14Medium().copyWith(height: 1.7.h),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
