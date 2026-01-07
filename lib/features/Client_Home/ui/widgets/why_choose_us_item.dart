import 'package:flutter/material.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/styles.dart';
import 'why_choose_us_icon.dart';

class WhyChooseUsItem extends StatelessWidget {
  final String title;
  final String description;
  final WhyChooseUsIconType iconType;

  const WhyChooseUsItem({
    super.key,
    required this.title,
    required this.description,
    required this.iconType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WhyChooseUsIcon(type: iconType),
        horizontalSpace(22),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.right,
                style: TextStyles.font16semiBold(),
              ),
              verticalSpace(12),
              Text(
                description,
                textAlign: TextAlign.right,
                style: TextStyles.font12SemiBold(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
