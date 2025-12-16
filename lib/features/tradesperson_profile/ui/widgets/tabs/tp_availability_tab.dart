import 'package:flutter/material.dart';

class TPAvailabilityTab extends StatelessWidget {
  final String body;

  const TPAvailabilityTab({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Text(body, style: const TextStyle(fontSize: 12, height: 1.6));
  }
}
