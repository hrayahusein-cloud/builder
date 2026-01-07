import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/styles.dart';

class TPTabs extends StatelessWidget {
  final int activeIndex;
  final List<String> labels;
  final ValueChanged<int> onChanged;

  const TPTabs({
    super.key,
    required this.activeIndex,
    required this.labels,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6).r,
      decoration: BoxDecoration(
        color: ColorsManager.softPeachCream,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: List.generate(labels.length, (i) {
          final bool active = i == activeIndex;
          return Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(12).r,
              onTap: () => onChanged(i),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10).h,
                decoration: BoxDecoration(
                  color: active
                      ? Theme.of(context).colorScheme.surface
                      : ColorsManager.softPeachCream,
                  borderRadius: BorderRadius.circular(12).r,
                ),
                child: Center(
                  child: Text(
                    labels[i],
                    style: TextStyles.font14Medium().copyWith(
                      color: active
                          ? Theme.of(context).colorScheme.onSurface
                          : ColorsManager.black,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
