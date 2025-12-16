import 'package:flutter/material.dart';

class TPContactRow extends StatelessWidget {
  final String displayName;
  final String subtitle;
  final VoidCallback onCall;
  final VoidCallback onChat;

  const TPContactRow({
    super.key,
    required this.displayName,
    required this.subtitle,
    required this.onCall,
    required this.onChat,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _MiniAction(icon: Icons.chat_bubble_outline, onTap: onChat),
        const SizedBox(width: 10),
        _MiniAction(icon: Icons.call_outlined, onTap: onCall),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(displayName, style: const TextStyle(fontWeight: FontWeight.w700)),
            const SizedBox(height: 2),
            Text(subtitle, style: const TextStyle(fontSize: 11, color: Colors.black54)),
          ],
        ),
        const SizedBox(width: 10),
        const CircleAvatar(
          radius: 14,
          backgroundColor: Color(0xFFF2F2F2),
          child: Icon(Icons.person, size: 16, color: Colors.black54),
        ),
      ],
    );
  }
}

class _MiniAction extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _MiniAction({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFEF7022).withOpacity(0.7)),
          color: Colors.white,
        ),
        child: Icon(icon, size: 18, color: const Color(0xFFEF7022)),
      ),
    );
  }
}
