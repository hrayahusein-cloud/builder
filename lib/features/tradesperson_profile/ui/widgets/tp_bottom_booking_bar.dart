import 'package:flutter/material.dart';

class TPBottomBookingBar extends StatelessWidget {
  final String buttonText;
  final VoidCallback onBook;
  final VoidCallback onFav;

  const TPBottomBookingBar({
    super.key,
    required this.buttonText,
    required this.onBook,
    required this.onFav,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
        color: Theme.of(context).colorScheme.surface,
        child: Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(14),
              onTap: onFav,
              child: Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xFFEF7022)),
                ),
                child: const Icon(Icons.star_border, color: Color(0xFFEF7022)),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: SizedBox(
                height: 46,
                child: ElevatedButton.icon(
                  onPressed: onBook,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEF7022),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 0,
                  ),
                  icon: const Icon(Icons.calendar_month, color: Colors.white),
                  label: Text(
                    buttonText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
