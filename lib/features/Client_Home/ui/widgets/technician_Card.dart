import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/extensions.dart';
import 'package:sallihli/core/helpers/is_dark_mode.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/routing/routes.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/styles.dart';
import 'package:sallihli/features/Client_Home/ui/client_home_screen.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/technican_image.dart';
import 'package:sallihli/core/widgets/technician_rating_row.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/technician_tag.dart';

class TechnicianCard extends StatelessWidget {
  final String name;
  final String tag;
  final double rating;
  final int reviewsCount;
  final String specialty;
  final String imagePath;

  const TechnicianCard({
    super.key,
    required this.name,
    required this.tag,
    required this.rating,
    required this.reviewsCount,
    required this.specialty,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.tradespersonPublicProfile),
      child: Container(
        width: 220.w,
        margin: EdgeInsetsDirectional.only(
          start: 4.w,
          end: 10.w,
          bottom: 4.h,
          top: 4.h,
        ),
        decoration: BoxDecoration(
          color: isDarkMode(context) ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(18).r,
          boxShadow: [
            BoxShadow(
              color: ColorsManager.black.withOpacity(0.05),
              blurRadius: 6.r,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TechnicianImage(imagePath: imagePath),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ).w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TechnicianTag(tag: tag),
                  verticalSpace(4),
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
                  verticalSpace(6),
                  Text(specialty, style: TextStyles.font12Medium()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
