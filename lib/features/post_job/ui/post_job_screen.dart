import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/theme/styles.dart';
import 'package:sallihli/features/post_job/ui/widgets/post_job_app_bar.dart';
import 'package:sallihli/features/post_job/ui/widgets/post_job_budget_field.dart';
import 'package:sallihli/features/post_job/ui/widgets/post_job_date_picker_field.dart';
import 'package:sallihli/features/post_job/ui/widgets/post_job_dropdown.dart';
import 'package:sallihli/features/post_job/ui/widgets/post_job_image_picker.dart';
import 'package:sallihli/features/post_job/ui/widgets/post_job_location_button.dart';
import 'package:sallihli/features/post_job/ui/widgets/post_job_section_title.dart';
import 'package:sallihli/features/post_job/ui/widgets/post_job_submit_button.dart';
import 'package:sallihli/features/post_job/ui/widgets/post_job_text_field.dart';

class PostJobScreen extends StatelessWidget {
  const PostJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PostJobAppBar(),
            verticalSpace(5),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25).w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PostJobSectionTitle(title: 'العنوان'),
                  PostJobTextField(
                    controller: TextEditingController(),
                    hint: 'ما الذي ترغب في إصلاحه؟',
                    textStyle: TextStyles.font14Medium(),
                    hintStyle: TextStyles.font16MediumStoneGray(),
                  ),

                  const PostJobSectionTitle(title: 'الخدمة'),
                  const PostJobDropdown(
                    hint: 'اختر نوع الخدمة',
                    items: ['كهرباء', 'سباكة', 'نجارة', 'حدادة', 'تكييف'],
                  ),

                  const PostJobSectionTitle(title: 'المدينة'),
                  PostJobDropdown(
                    hint: 'اختر المدينة',
                    items: const [
                      'دمشق',
                      'ريف دمشق',
                      'حلب',
                      'حمص',
                      'حماة',
                      'اللاذقية',
                      'طرطوس',
                    ],
                    onChanged: (value) {
                      debugPrint('المدينة المختارة: $value');
                    },
                  ),

                  const PostJobSectionTitle(title: 'تحديد الحي'),
                  PostJobTextField(
                    controller: TextEditingController(),
                    hint: 'اكتب العنوان بالتفصيل (المدينة-الشارع)',
                    textStyle: TextStyles.font14Medium(),
                    hintStyle: TextStyles.font16MediumStoneGray(),
                  ),

                  const PostJobSectionTitle(
                    title: 'تحديد موقعك التفصيلي (اختياري)',
                  ),
                  PostJobTextField(
                    controller: TextEditingController(),
                    hint: 'اكتب العنوان بالتفصيل (المدينة-الشارع)',
                    textStyle: TextStyles.font14Medium(),
                    hintStyle: TextStyles.font16MediumStoneGray(),
                  ),

                  const PostJobSectionTitle(
                    title: 'تحديد موقعك على الخريطة (اختياري)',
                  ),
                  SizedBox(height: 8.h),
                  const PostJobLocationButton(),

                  const PostJobSectionTitle(title: 'وصف المشكلة'),
                  PostJobTextField(
                    controller: TextEditingController(),
                    hint:
                        'يرجى وصف المشكلة بالتفصيل (مثال: تسريب مياه من أسفل الغسالة...)',
                    maxLines: 4,
                    textStyle: TextStyles.font14Medium(),
                    hintStyle: TextStyles.font16MediumStoneGray(),
                  ),

                  const PostJobSectionTitle(title: 'ارفق صورة (اختياري)'),
                  SizedBox(height: 8.h),
                  const PostJobImagePicker(),

                  const PostJobSectionTitle(
                    title: 'أقل الميزانية المتوقعة (اختياري)',
                  ),
                  const PostJobBudgetField(
                    
                  ),

                  const PostJobSectionTitle(
                    title: 'أعلى الميزانية المتوقعة (اختياري)',
                  ),
                  const PostJobBudgetField(),

                  const PostJobSectionTitle(title: 'الوقت المناسب للتنفيذ'),
                  PostJobDropdown(
                    hint: 'اختر الوقت المناسب',
                    items: const [
                      'في أقرب وقت ممكن',
                      'اليوم',
                      'غداً',
                      'خلال هذا الأسبوع',
                      'خلال الأسبوع القادم',
                    ],
                    onChanged: (value) {
                      debugPrint('وقت التنفيذ: $value');
                    },
                  ),

                  const PostJobSectionTitle(title: 'الوقت المناسب لاحقاً'),
                  const PostJobDatePickerField(hint: 'اختر الوقت المناسب'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const PostJobSubmitButton(),
    );
  }
}
