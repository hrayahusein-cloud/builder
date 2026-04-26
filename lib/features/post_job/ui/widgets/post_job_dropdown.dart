import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/styles.dart';

import '../../../../core/theme/colors.dart';

class PostJobDropdown extends StatefulWidget {
  final String hint;
  final List<String> items;
  final IconData icon;
  final ValueChanged<String?>? onChanged;

  const PostJobDropdown({
    super.key,
    required this.hint,
    required this.items,
    this.icon = Icons.keyboard_arrow_down,
    this.onChanged,
  });

  @override
  State<PostJobDropdown> createState() => _PostJobDropdownState();
}

class _PostJobDropdownState extends State<PostJobDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      icon: Icon(widget.icon, color: ColorsManager.rubyOrange, size: 24.sp),
      dropdownColor: ColorsManager.grey,
      style: TextStyles.font14Medium(),
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsManager.grey.withValues(alpha: 0.5),
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide.none,
        ),
        hintText: widget.hint,
        hintStyle: TextStyles.font12MediumStoneGray(),
      ),
      items: widget.items
          .map(
            (city) => DropdownMenuItem<String>(
              value: city,
              child: Text(
                city,
                style: TextStyles.font14Medium().copyWith(
                  color: ColorsManager.black,
                ),
              ),
            ),
          )
          .toList(),
      onChanged: (value) {
        setState(() => selectedValue = value);
        widget.onChanged?.call(value);
      },
    );
  }
}
