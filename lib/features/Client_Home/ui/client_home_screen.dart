import 'package:flutter/material.dart';
import 'package:sallihli/features/Client_Home/ui/client_home_body.dart';

import 'package:sallihli/features/account/ui/account_screen.dart';
import 'package:sallihli/features/chat/chat_screen.dart';
import 'package:sallihli/features/navigation/ui/widgets/center_fab_button.dart';
import 'package:sallihli/features/navigation/ui/widgets/custom_bottom_nav_bar.dart';
import 'package:sallihli/features/technicians/ui/technicians_screen.dart';

class ClientHomeScreen extends StatefulWidget {
  const ClientHomeScreen({super.key});

  @override
  State<ClientHomeScreen> createState() => _ClientHomeScreenState();
}

class _ClientHomeScreenState extends State<ClientHomeScreen> {
  int _currentIndex = 3;

  final List<Widget> _pages = const [
    AccountScreen(),
    ChatScreen(),
    TechniciansScreen(),
    HomeScreenBody(),
  ];

  void _onItemSelected(int index) {
    setState(() => _currentIndex = index);
  }

  void _onCenterAction() {
    // هنا حط منطق زر الـ +
    // مثلاً فتح bottom sheet لطلب خدمة جديدة
    debugPrint('Center + button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CenterFabButton(onPressed: _onCenterAction),
      bottomNavigationBar: CustomBottomNavBar(
        
        currentIndex: _currentIndex,
        onItemSelected: _onItemSelected,
      ),
    );
  }
}
