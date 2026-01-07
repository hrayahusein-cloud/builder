import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/colors.dart';

import 'package:sallihli/features/tradesperson_profile/ui/widgets/tp_top_identity.dart';

class TPHeaderBar extends StatelessWidget {
  final VoidCallback onBack;
  final String name;
  final String role;
  const TPHeaderBar({
    super.key,
    required this.onBack,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 14),
      child: Row(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(12).r,
            onTap: onBack,
            child: Container(
              width: 38.w,
              height: 38.h,
              decoration: BoxDecoration(
                color: ColorsManager.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(12).r,
              ),
              child: Icon(
                Icons.chevron_left,
                size: 24.sp,
                color: ColorsManager.black,
              ),
            ),
          ),

          Expanded(
            child: Center(
              child: TPTopIdentity(name: name, role: role),
            ),
          ),

          horizontalSpace(38), // توازن الطرف الثاني
        ],
      ),
    );
  }
}
