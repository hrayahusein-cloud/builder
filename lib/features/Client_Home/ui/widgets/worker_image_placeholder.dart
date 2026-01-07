import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkerImagePlaceholder extends StatelessWidget {
  const WorkerImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    // هنا حط صورة العامل من الأصول حقك
    return Container(
      height: 200.h,
      width: 135.w,
      transform: Matrix4.identity()
        ..translate(0.0, -50.0)
        ..rotateZ(0),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16).r,
        image: const DecorationImage(
          image: AssetImage('assets/images/worker.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
