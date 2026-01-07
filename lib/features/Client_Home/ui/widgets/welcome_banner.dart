/*------------------ بنر الترحيب ------------------*/

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/localization/generated/intl/l10n.dart';
import 'package:sallihli/core/theme/colors.dart';
import 'package:sallihli/core/theme/styles.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/worker_image_placeholder.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 169.h,
      decoration: BoxDecoration(
        color: ColorsManager.rubyOrange,
        borderRadius: BorderRadius.circular(18).r,
      ),
      padding: EdgeInsetsDirectional.only(top: 20.h, start: 23.w),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(4),
                Text(S.of(context).hello, style: TextStyles.font24BoldWhite()),
                verticalSpace(10),
                Text(
                  'اختر خدمتك، واحجز فنيك بسهولة.',
                  style: TextStyles.font16RegularWhite(),
                ),
              ],
            ),
          ),
          horizontalSpace(10),
          const Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: WorkerImagePlaceholder(),
            ),
          ),
        ],
      ),
    );
  }
}
