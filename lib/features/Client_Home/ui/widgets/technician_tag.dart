import 'package:flutter/material.dart';
import 'package:sallihli/core/theme/colors.dart';

class TechnicianTag extends StatelessWidget {
  final String tag;

  const TechnicianTag({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: ColorsManager.rubyOrange.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        tag,
        style: const TextStyle(
          color: Colors.orange,
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}