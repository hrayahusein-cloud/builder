import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/colors.dart';

class CenterFabButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CenterFabButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: ColorsManager.rubyOrange,
      elevation: 4,
      shape: const CircleBorder(),
      child: Icon(Icons.add, size: 32.sp, color: ColorsManager.white),
    );
  }
}
