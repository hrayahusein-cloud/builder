import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/colors.dart';

enum WhyChooseUsIconType { shield, tag }

class WhyChooseUsIcon extends StatelessWidget {
  final WhyChooseUsIconType type;

  const WhyChooseUsIcon({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final icon = switch (type) {
      WhyChooseUsIconType.shield => Icons.verified_user,
      WhyChooseUsIconType.tag => Icons.local_offer,
    };

    return Container(
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: ColorsManager.softBlue, // أزرق فاتح مثل الصورة
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(icon, size: 30.sp, color: ColorsManager.softYellow),
      ),
    );
  }
}
