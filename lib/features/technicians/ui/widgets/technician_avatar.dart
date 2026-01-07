import 'package:flutter/material.dart';

class TechnicianAvatar extends StatelessWidget {
  final String imagePath;

  const TechnicianAvatar({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: SizedBox(
        width: 90,
        height: 90,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
