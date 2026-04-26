import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/widgets/app_logo_title.dart';

import '../../../../core/theme/colors.dart';

class PostJobAppBar extends StatelessWidget {
  const PostJobAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppLogoTitle(),
        const Spacer(),
        _CircleIcon(icon: Icons.search, onTap: () {}),
        horizontalSpace(8),
        _CircleIcon(icon: Icons.notifications_none, onTap: () {}),
      ],
    );
  }
}

class _CircleIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _CircleIcon({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14.r),
      onTap: onTap,
      child: Container(
        width: 47.w,
        height: 47.w,
        decoration: BoxDecoration(
          color: ColorsManager.softIvory,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Icon(icon, size: 22.sp, color: ColorsManager.oceanTeal),
      ),
    );
  }
}
