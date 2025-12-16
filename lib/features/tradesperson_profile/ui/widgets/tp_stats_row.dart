import 'package:flutter/material.dart';

class TPStatsRow extends StatelessWidget {
  final String leftTitle, leftSub;
  final String midTitle, midSub;
  final String rightTitle, rightSub;

  const TPStatsRow({
    super.key,
    required this.leftTitle,
    required this.leftSub,
    required this.midTitle,
    required this.midSub,
    required this.rightTitle,
    required this.rightSub,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          Expanded(child: _StatBox(icon: Icons.help_outline, title: leftTitle, sub: leftSub)),
          const SizedBox(width: 10),
          Expanded(child: _StatBox(icon: Icons.star, title: midTitle, sub: midSub)),
          const SizedBox(width: 10),
          Expanded(child: _StatBox(icon: Icons.badge, title: rightTitle, sub: rightSub)),
        ],
      ),
    );
  }
}

class _StatBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String sub;

  const _StatBox({required this.icon, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.55),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFEF7022).withOpacity(0.6)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 18, color: const Color(0xFFEF7022)),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
                Text(sub, style: const TextStyle(fontSize: 10, color: Colors.black54)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
