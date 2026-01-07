/*------------------ قسم الفنيين ------------------*/

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/section_title.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/technician_Card.dart';

class TechniciansSection extends StatelessWidget {
  const TechniciansSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(text: 'الفنيين'),
        const SizedBox(height: 8),
        SizedBox(
          height: 220.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              TechnicianCard(
                name: 'محمد علي',
                tag: 'مميز',
                rating: 4.9,
                reviewsCount: 5200,
                specialty: "سبّاك متخصص في إصلاح التسريبات والتمديدات",
                imagePath: 'assets/images/tech1.png',
              ),
              TechnicianCard(
                name: 'أحمد ابراهيم',
                tag: 'مميز',
                rating: 4.8,
                reviewsCount: 4200,
                specialty: 'فني سباكة متخصص في إصلاح',
                imagePath: 'assets/images/tech2.png',
              ),
              TechnicianCard(
                name: 'أحمد ابراهيم',
                tag: 'مميز',
                rating: 4.8,
                reviewsCount: 4200,
                specialty: 'فني سباكة متخصص في إصلاح',
                imagePath: 'assets/images/tech2.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
