import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TechnicianImage extends StatelessWidget {
  final String imagePath;

  const TechnicianImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(18.r)),
      child: SizedBox(
        height: 110.h,
        width: double.infinity,
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
