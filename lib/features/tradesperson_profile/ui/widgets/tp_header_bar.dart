import 'package:flutter/material.dart';

class TPHeaderBar extends StatelessWidget {
  final VoidCallback onBack;

  const TPHeaderBar({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onBack,
            child: Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.chevron_left, size: 24),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
