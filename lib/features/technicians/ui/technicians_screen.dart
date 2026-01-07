import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/styles.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/service_chip.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/top_actions_row.dart';
import 'package:sallihli/features/technicians/ui/widgets/list_of_services.dart';
import 'package:sallihli/features/technicians/ui/widgets/technicians_list_page.dart';
import 'package:sallihli/features/technicians/ui/widgets/title_technicians_and_city.dart';

class TechniciansScreen extends StatefulWidget {
  const TechniciansScreen({super.key});

  @override
  State<TechniciansScreen> createState() => _TechniciansScreenState();
}

class _TechniciansScreenState extends State<TechniciansScreen> {
  String selectedCategory = "الكهرباء"; // الافتراضي

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 012).w,
          child: Column(
            children: [
              TopActionsRow(),
              verticalSpace(16),

              TitleTechniciansAndCity(),
              ListOfServices(
                selectedCategory: selectedCategory,
                onCategoryChanged: (newCategory) {
                  setState(() {
                    selectedCategory = newCategory;
                  });
                },
              ),

              verticalSpace(16),
              Expanded(
                child: TechniciansListPage(categoryLabel: selectedCategory),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
