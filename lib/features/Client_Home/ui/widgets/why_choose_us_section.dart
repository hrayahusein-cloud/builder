import 'package:flutter/material.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/styles.dart';
import 'package:sallihli/features/Client_Home/ui/widgets/why_choose_us_icon.dart';
import 'why_choose_us_item.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('لماذا تختارنا', style: TextStyles.font24Bold()),
        verticalSpace(30),

        WhyChooseUsItem(
          title: 'تم التحقق من الخلفية',
          description: 'يخضع كل محترف لعملية تدقيق صارمة\nلسلامتك.',
          iconType: WhyChooseUsIconType.shield,
        ),
        verticalSpace(30),

        WhyChooseUsItem(
          title: 'تسعير مسبقة',
          description:
              'أغلب التكلفة ثابتة لدينا، والعملاء لا توجد رسوم\nخفية أو مفاجآت.',
          iconType: WhyChooseUsIconType.tag,
        ),
        verticalSpace(30),

        WhyChooseUsItem(
          title: 'دعم على مدار الأسبوع',
          description: 'فريق دعم العملاء لدينا متاح دائماً\nلمساعدتك.',
          iconType: WhyChooseUsIconType.tag,
        ),
        verticalSpace(48),
      ],
    );
  }
}
