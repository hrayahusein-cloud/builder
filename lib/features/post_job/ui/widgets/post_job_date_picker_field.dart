import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/styles.dart';
import '../../../../core/theme/colors.dart';

class PostJobDatePickerField extends StatefulWidget {
  final String hint;

  const PostJobDatePickerField({
    super.key,
    required this.hint,
  });

  @override
  State<PostJobDatePickerField> createState() =>
      _PostJobDatePickerFieldState();
}

class _PostJobDatePickerFieldState extends State<PostJobDatePickerField> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14.r),
      onTap: _pickDate,
      child: Container(
        height: 52.h,
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        decoration: BoxDecoration(
          color: ColorsManager.grey.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Row(
          children: [
            Icon(
              Icons.calendar_month,
              color: ColorsManager.rubyOrange,
              size: 24.sp,
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                selectedDate == null
                    ? widget.hint
                    : _formatDate(selectedDate!),
                style: selectedDate == null
                    ? TextStyles.font12MediumStoneGray()
                    : TextStyles.font14Medium(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickDate() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: ColorsManager.rubyOrange,
                ),
          ),
          child: child!,
        );
      },
    );

    if (date != null) {
      setState(() => selectedDate = date);
    }
  }

  String _formatDate(DateTime date) {
    return '${date.year}/${date.month}/${date.day}';
  }
}
