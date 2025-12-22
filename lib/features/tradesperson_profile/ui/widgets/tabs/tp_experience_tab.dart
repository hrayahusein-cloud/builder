import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/styles.dart';

class TPExperienceTab extends StatelessWidget {
  final String body;

  const TPExperienceTab({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.5.h,

      child: Text(body, style: TextStyles.font14Medium().copyWith(height: 1.7)),
    );
  }
}
