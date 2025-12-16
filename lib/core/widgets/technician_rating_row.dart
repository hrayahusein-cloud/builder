import 'package:flutter/material.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/styles.dart';

class TechnicianRatingRow extends StatelessWidget {
  final double rating;
  final int reviewsCount;

  const TechnicianRatingRow({
    super.key,
    required this.rating,
    required this.reviewsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('($reviewsCount)', style: TextStyles.font10MediumGrey()),
        horizontalSpace(4),
        Text(rating.toStringAsFixed(1), style: TextStyles.font12Medium()),
        horizontalSpace(4),
        const Icon(Icons.star, size: 14, color: Colors.amber),
      ],
    );
  }
}
