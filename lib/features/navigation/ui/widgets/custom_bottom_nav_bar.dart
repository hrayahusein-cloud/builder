import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/is_dark_mode.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'nav_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemSelected;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: Theme.of(context).colorScheme.surface,
      elevation: 6,
      child: SizedBox(
        height: 70.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // يسار زر +
            NavItem(
              index: 3,
              currentIndex: currentIndex,
              icon: Icons.home_outlined,
              label: 'الرئيسية',
              onTap: onItemSelected,
            ),
            NavItem(
              index: 2,
              currentIndex: currentIndex,
              icon: Icons.settings, // رموز التروس للفنيين
              label: 'فنيين',
              onTap: onItemSelected,
            ),

            const SizedBox(width: 40), // فراغ تحت زر +
            // يمين زر +
            NavItem(
              index: 1,
              currentIndex: currentIndex,
              icon: Icons.chat_bubble_outline,
              label: 'دردشة',
              onTap: onItemSelected,
            ),
            NavItem(
              index: 0,
              currentIndex: currentIndex,
              icon: Icons.person,
              label: 'حسابي',
              onTap: onItemSelected,
            ),
          ],
        ),
      ),
    );
  }
}
