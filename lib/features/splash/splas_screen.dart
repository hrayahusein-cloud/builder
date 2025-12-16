// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:sallihli/core/helpers/extensions.dart';
// import 'package:sallihli/core/routing/routes.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fadeAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // أنيميشن بسيطة للّوگو/النص
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1200),
//     );

//     _fadeAnimation = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     );

//     _controller.forward();

//     // بعد 3 ثواني انتقل للصفحة الرئيسية
//     Timer(const Duration(seconds: 3), () {
//       context.pushReplacementNamed(Routes.clientHome, arguments: null);
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFF0f172a), Color(0xFF1d4ed8)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: FadeTransition(
//             opacity: _fadeAnimation,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 // مكان اللوجو
//                 Container(
//                   width: 100,
//                   height: 100,
//                   decoration: BoxDecoration(
//                     color: Colors.white.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(24),
//                     border: Border.all(
//                       color: Colors.white.withOpacity(0.3),
//                       width: 1.5,
//                     ),
//                   ),
//                   child: const Icon(
//                     Icons.flutter_dash,
//                     size: 60,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 24),
//                 const Text(
//                   'PrimeTech App',
//                   style: TextStyle(
//                     fontSize: 26,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     letterSpacing: 1.2,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   'Building clean Flutter experiences',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.white.withOpacity(0.8),
//                   ),
//                 ),
//                 const SizedBox(height: 32),
//                 const SizedBox(
//                   width: 32,
//                   height: 32,
//                   child: CircularProgressIndicator(
//                     strokeWidth: 2.5,
//                     valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
