import 'package:flutter/material.dart';

class TPAboutTab extends StatelessWidget {
  final String title;
  final String body;

  const TPAboutTab({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
        const SizedBox(height: 8),
        Text(body, style: const TextStyle(fontSize: 12, height: 1.6)),
      ],
    );
  }
}
