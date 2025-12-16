import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/section_title.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/service_chip.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(text: 'خدماتنا'),
        verticalSpace(10),

        SizedBox(
          height: 40.h, // كفاية للـ Chips
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ServiceChip(
                text: 'الكهرباء',
                icon: Icons.bolt,
                onTap: () {},
                isSelected: true,
              ),
              ServiceChip(
                text: 'السباكة',
                icon: Icons.water_drop,
                onTap: () {},
                isSelected: false,
              ),

              ServiceChip(
                text: 'النجارة',
                icon: Icons.chair_alt,
                onTap: () {},
                isSelected: false,
              ),
              ServiceChip(
                text: 'الحدادة والألمنيوم',
                icon: Icons.build,
                onTap: () {},
                isSelected: false,
              ),
              ServiceChip(
                text: 'الحدادة والألمنيوم',
                icon: Icons.build,
                onTap: () {},
                isSelected: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
