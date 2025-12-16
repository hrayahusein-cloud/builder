import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/is_dark_mode.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/styles.dart';

class ServiceChip extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;
  const ServiceChip({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: InkWell(
        borderRadius: BorderRadius.circular(16.r),
        onTap: onTap,
        child: Container(
          height: 40.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: BoxDecoration(
            color: isDarkMode(context)
                ? ColorsManager.black
                : isSelected
                ? ColorsManager.rubyOrange
                : ColorsManager.white,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                color: ColorsManager.black.withOpacity(0.04),
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 18.sp,
                color: isSelected
                    ? ColorsManager.oceanTeal
                    : ColorsManager.rubyOrange,
              ),
              horizontalSpace(4),
              Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font16Medium().copyWith(
                  color: isSelected
                      ? ColorsManager.white
                      : isDarkMode(context)
                      ? ColorsManager.white
                      : ColorsManager.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
