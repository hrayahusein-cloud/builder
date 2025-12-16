import 'package:flutter/material.dart';
import 'package:sallihli/core/widgets/circle_icon_button.dart';

class NotificationIconButton extends StatelessWidget {
  const NotificationIconButton({super.key});
  @override
  Widget build(BuildContext context) {
    return CircleIconButton(
      icon: Icons.notifications_none,
      onTap: () {
      },
    );
  }
}


// ElevatedButton(
//   onPressed: () {
//     // إنجليزي
//     context.read<LocaleCubit>().setLocale(const Locale('en'));
//   },
//   child: const Text('English'),
// ),