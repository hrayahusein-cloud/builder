import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/services_section.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/technicians_section.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/top_actions_row.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/welcome_banner.dart';
class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 012).w,
          child: Column(
            children: [
              TopActionsRow(),
              verticalSpace(50),
              WelcomeBanner(),
              verticalSpace(10),
              ServicesSection(),
              verticalSpace(16),
              TechniciansSection(),
            ],
          ),
        ),
      ),
    );
  }
}