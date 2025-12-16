import 'package:flutter/material.dart';

class TPProfileCard extends StatelessWidget {
  final String imagePath;
  final String badgeText;
  final String specialtyTitle;
  final String personName;
  final String experienceLine;

  const TPProfileCard({
    super.key,
    required this.imagePath,
    required this.badgeText,
    required this.specialtyTitle,
    required this.personName,
    required this.experienceLine,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.55),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(Icons.handyman, size: 16, color: Color(0xFFEF7022)),
                    SizedBox(width: 6),
                    Text(
                      'فني إصلاح محترف',
                      style: TextStyle(fontSize: 12, color: Colors.black87),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  personName,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 4),
                Text(
                  experienceLine,
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: _OrangeBadge(text: badgeText),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset(
              imagePath,
              width: 86,
              height: 86,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class _OrangeBadge extends StatelessWidget {
  final String text;
  const _OrangeBadge({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFEF7022),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
