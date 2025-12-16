import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/service_chip.dart';

class ListOfServices extends StatelessWidget {
  const ListOfServices({super.key, required this.selectedCategory, required this.onCategoryChanged});

   final String selectedCategory;

  final ValueChanged<String> onCategoryChanged;

  final List<_ServiceData> services = const [
    _ServiceData(label: 'الكهرباء', icon: Icons.bolt),
    _ServiceData(label: 'السباكة', icon: Icons.water_drop),
    _ServiceData(label: 'النجارة', icon: Icons.chair_alt),
    _ServiceData(label: 'الحدادة والألمنيوم', icon: Icons.build),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        separatorBuilder: (_, __) => horizontalSpace(4),
        itemBuilder: (context, index) {
          final service = services[index];
          final isSelected = selectedCategory == service.label;

          return ServiceChip(
            text: service.label,
            icon: service.icon,
            isSelected: isSelected, // 👈 نضيف هذا
            onTap: () {
                           onCategoryChanged(service.label);

            },
          );
        },
      ),
    );
  }
}

class _ServiceData {
  final String label;
  final IconData icon;
  const _ServiceData({required this.label, required this.icon});
}
