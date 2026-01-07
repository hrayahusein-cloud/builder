import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/styles.dart';

class TPStatsRow extends StatelessWidget {
  final String leftTitle, leftSub;
  final String midTitle, midSub;
  final String rightTitle, rightSub;

  const TPStatsRow({
    super.key,
    required this.leftTitle,
    required this.leftSub,
    required this.midTitle,
    required this.midSub,
    required this.rightTitle,
    required this.rightSub,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18).w,
      child: Row(
        children: [
          Expanded(
            child: _StatBox(
              icon: Icons.help_outline,
              title: leftTitle,
              sub: leftSub,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: _StatBox(icon: Icons.star, title: midTitle, sub: midSub),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: _StatBox(
              icon: Icons.badge,
              title: rightTitle,
              sub: rightSub,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String sub;

  const _StatBox({required this.icon, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      padding: const EdgeInsets.symmetric(horizontal: 10).w,
      decoration: BoxDecoration(
        color: ColorsManager.white.withOpacity(0.55),
        borderRadius: BorderRadius.circular(14).r,
        border: Border.all(color: ColorsManager.rubyOrange.withOpacity(0.6)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 18.sp, color: ColorsManager.rubyOrange),
          horizontalSpace(8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("$title $sub", style: TextStyles.font10Bold())],
            ),
          ),
        ],
      ),
    );
  }
}
