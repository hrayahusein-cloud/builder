import 'package:flutter/material.dart';

class TPExperienceTab extends StatelessWidget {
  final String body;

  const TPExperienceTab({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Text(body, style: const TextStyle(fontSize: 12, height: 1.6));
  }
}
