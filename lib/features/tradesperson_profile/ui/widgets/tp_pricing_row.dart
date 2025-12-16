import 'package:flutter/material.dart';

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
        Expanded(child: _PriceCard(title: 'رسوم الساعة', price: hourlyPrice)),
        const SizedBox(width: 12),
        Expanded(child: _PriceCard(title: 'العمل اليومي', price: dailyPrice)),
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
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.black.withOpacity(0.08)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.attach_money, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 11, color: Colors.black54)),
                const SizedBox(height: 2),
                Text(price, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
