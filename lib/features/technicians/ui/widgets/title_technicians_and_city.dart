import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/theme/styles.dart';

class TitleTechniciansAndCity extends StatefulWidget {
  const TitleTechniciansAndCity({super.key});

  @override
  State<TitleTechniciansAndCity> createState() =>
      _TitleTechniciansAndCityState();
}

class _TitleTechniciansAndCityState extends State<TitleTechniciansAndCity> {
  String selectedCity = "دمشق";

  final List<String> cities = [
    "دمشق",
    "حلب",
    "حمص",
    "اللاذقية",
    "طرطوس",
    "حماة",
    "درعا",
    "السويداء",
    "دير الزور",
    "الرقة",
    "الحسكة",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 22.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('الفنيين', style: TextStyles.font24BoldOceanTeal()),
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedCity,
              items: cities
                  .map(
                    (city) => DropdownMenuItem(
                      value: city,

                      child: Text(city, style: TextStyles.font16Medium()),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedCity = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
