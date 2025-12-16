import 'package:flutter/material.dart';

class TPReviewsTab extends StatelessWidget {
  final double rating;
  final int totalClients;
  final String body;

  const TPReviewsTab({
    super.key,
    required this.rating,
    required this.totalClients,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'تقييم $rating ⭐ أكثر من $totalClients عميل.',
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                body,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 12, height: 1.6),
              ),
            ),
            const SizedBox(width: 10),
            const CircleAvatar(
              radius: 14,
              backgroundColor: Color(0xFFF2F2F2),
              child: Icon(Icons.person, size: 16, color: Colors.black54),
            ),
          ],
        ),
      ],
    );
  }
}
