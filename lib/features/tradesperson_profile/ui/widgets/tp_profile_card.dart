import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/styles.dart';

class TPProfileCard extends StatelessWidget {
  final String imagePath;
  final String specialtyTitle;
  final String personName;
  final String experienceLine;

  const TPProfileCard({
    super.key,
    required this.imagePath,

    required this.specialtyTitle,
    required this.personName,
    required this.experienceLine,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20).w,
      padding: const EdgeInsets.all(12).w,
      decoration: BoxDecoration(
        color: ColorsManager.white.withOpacity(0.55),
        borderRadius: BorderRadius.circular(22).r,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.handyman,
                      size: 16.sp,
                      color: ColorsManager.rubyOrange,
                    ),
                    horizontalSpace(4),
                    Text('فني إصلاح محترف', style: TextStyles.font14Medium()),
                  ],
                ),
                verticalSpace(8),
                Text(personName, style: TextStyles.font14Bold()),
                verticalSpace(4),
                Text(experienceLine, style: TextStyles.font14SemiBold()),
                verticalSpace(8),
              ],
            ),
          ),
          horizontalSpace(12),
          ClipRRect(
            borderRadius: BorderRadius.circular(18).r,
            child: Image.asset(
              imagePath,
              width: 86.w,
              height: 86.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
