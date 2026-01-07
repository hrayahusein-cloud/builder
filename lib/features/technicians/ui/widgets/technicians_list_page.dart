import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import '../widgets/technician_service_card.dart';

class TechniciansListPage extends StatelessWidget {
  const TechniciansListPage({super.key, required this.categoryLabel});
  final String categoryLabel;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 12).w,
      itemBuilder: (context, index) {
        return TechnicianServiceCard(
          categoryLabel: categoryLabel,
          name: 'محمد علي',
          rating: 4.9,
          reviewsCount: 200,
          description: 'سبّاك متخصص في إصلاح التسريبات والتمديدات',
          imagePath: 'assets/images/tech1.png',
        );
      },
      separatorBuilder: (_, __) => verticalSpace(3),
      itemCount: 5,
    );
  }
}
