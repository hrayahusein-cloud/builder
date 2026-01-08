import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TechnicianAvatar extends StatelessWidget {
  final String imagePath;

  const TechnicianAvatar({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: SizedBox(
        width: 90.w,
        height: 90.h,
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
