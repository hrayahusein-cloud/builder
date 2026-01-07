import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/is_dark_mode.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/styles.dart';
import 'package:sallihli/core/widgets/technician_rating_row.dart';
import 'technician_category_badge.dart';
import 'technician_avatar.dart';

class TechnicianServiceCard extends StatelessWidget {
  final String categoryLabel;
  final String name;
  final double rating;
  final int reviewsCount;
  final String description;
  final String imagePath;

  const TechnicianServiceCard({
    super.key,
    required this.categoryLabel,
    required this.name,
    required this.rating,
    required this.reviewsCount,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // الكرت الأبيض
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14).w,
          margin: EdgeInsets.only(top: 18.h),
          decoration: BoxDecoration(
            color: isDarkMode(context)
                ? ColorsManager.black
                : ColorsManager.white,
            borderRadius: BorderRadius.circular(16).r,
            boxShadow: [
              BoxShadow(
                color: isDarkMode(context)
                    ? ColorsManager.white.withOpacity(0.06)
                    : ColorsManager.black.withOpacity(0.06),
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TechnicianAvatar(imagePath: imagePath),
              horizontalSpace(27),
              // النصوص
              SizedBox(
                width: 220.w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name, style: TextStyles.font14BoldrRubyOrange()),
                        TechnicianRatingRow(
                          rating: rating,
                          reviewsCount: reviewsCount,
                        ),
                      ],
                    ),
                    verticalSpace(5),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.font12Medium(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // البادج البرتقالي (كهرباء) فوق يمين
        Positioned(
          top: 4.h,
          right: 20.r,
          child: TechnicianCategoryBadge(label: categoryLabel),
        ),
      ],
    );
  }
}
