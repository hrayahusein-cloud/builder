import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/styles.dart';

class TechnicianCategoryBadge extends StatelessWidget {
  final String label;

  const TechnicianCategoryBadge({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4).w,
      decoration: BoxDecoration(
        color: ColorsManager.rubyOrange,
        borderRadius: BorderRadius.circular(16).r,
      ),
      child: Text(
        label,
        style: TextStyles.font12BoldWhite(),
        // style: const TextStyle(
        //   color: Colors.white,
        //   fontSize: 12,
        //   fontWeight: FontWeight.w600,
        // ),
      ),
    );
  }
}
