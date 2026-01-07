import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/styles.dart';

class TPPricingRow extends StatelessWidget {
  final String hourlyPrice;
  final String dailyPrice;

  const TPPricingRow({
    super.key,
    required this.hourlyPrice,
    required this.dailyPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _PriceCard(title: 'رسوم الساعة', price: hourlyPrice),
        ),
        horizontalSpace(12),
        Expanded(
          child: _PriceCard(title: 'العمل اليومي', price: dailyPrice),
        ),
      ],
    );
  }
}

class _PriceCard extends StatelessWidget {
  final String title;
  final String price;

  const _PriceCard({required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      padding: const EdgeInsets.symmetric(horizontal: 12).w,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(14).r,
        border: Border.all(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.4),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.black.withOpacity(0.03),
            blurRadius: 8.r,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.attach_money, size: 18.sp),
          horizontalSpace(8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyles.font12Medium()),
                const SizedBox(height: 2),
                Text(price, style: TextStyles.font10Medium()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
