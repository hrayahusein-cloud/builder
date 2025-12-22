import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/styles.dart';

class TPContactRow extends StatelessWidget {
  final String displayName;
  final String subtitle;
  final VoidCallback onCall;
  final VoidCallback onChat;

  const TPContactRow({
    super.key,
    required this.displayName,
    required this.subtitle,
    required this.onCall,
    required this.onChat,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      children: [
        _MiniAction(icon: Icons.chat_bubble_outline, onTap: onChat),
        horizontalSpace(10),
        _MiniAction(icon: Icons.call_outlined, onTap: onCall),
        const Spacer(),
        Row(
          children: [
            Text(subtitle, style: TextStyles.font12Medium()),
            horizontalSpace(6),
            Text(displayName, style: TextStyles.font12Bold()),
          ],
        ),
        horizontalSpace(10),
        CircleAvatar(
          radius: 16.r,
          backgroundColor: ColorsManager.lightGrayBackground,
          child: Icon(Icons.person, size: 20.sp, color: ColorsManager.black54),
        ),
      ],
    );
  }
}

class _MiniAction extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _MiniAction({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12).r,
      onTap: onTap,
      child: Container(
        width: 38.w,
        height: 38.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12).r,
          border: Border.all(color: ColorsManager.rubyOrange.withOpacity(0.7)),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Icon(icon, size: 18.sp, color: ColorsManager.rubyOrange),
      ),
    );
  }
}
