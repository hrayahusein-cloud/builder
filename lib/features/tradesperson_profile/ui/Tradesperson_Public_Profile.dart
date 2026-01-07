import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sallihli/core/helpers/is_dark_mode.dart';
import 'package:sallihli/core/helpers/spacing.dart';
import 'package:sallihli/core/localization/generated/l10n.dart';
import 'package:sallihli/core/theme/colors.dart';

import 'widgets/tp_bottom_booking_bar.dart';
import 'widgets/tp_contact_row.dart';
import 'widgets/tp_header_bar.dart';
import 'widgets/tp_pricing_row.dart';
import 'widgets/tp_profile_card.dart';
import 'widgets/tp_stats_row.dart';
import 'widgets/tp_tabs.dart';
import 'widgets/tabs/tp_about_tab.dart';
import 'widgets/tabs/tp_availability_tab.dart';
import 'widgets/tabs/tp_experience_tab.dart';
import 'widgets/tabs/tp_reviews_tab.dart';

class TradespersonPublicProfileScreen extends StatefulWidget {
  const TradespersonPublicProfileScreen({super.key});

  @override
  State<TradespersonPublicProfileScreen> createState() =>
      _TradespersonPublicProfileScreenState();
}

class _TradespersonPublicProfileScreenState
    extends State<TradespersonPublicProfileScreen> {
  int _tabIndex = 0;

  // بيانات تجريبية (بدلها من API لاحقاً)
  final String name = 'محمد علي';
  final String role = 'مهندس كهرباء';
  final String imagePath = 'assets/images/tech1.png';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            const _BackgroundGradient(),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    verticalSpace(16),
                    TPHeaderBar(
                      onBack: () => Navigator.pop(context),
                      name: name,
                      role: role,
                    ),

                    verticalSpace(30),

                    TPProfileCard(
                      imagePath: imagePath,
                      specialtyTitle: 'فني إصلاح محترف',
                      personName: name,
                      experienceLine: '8 سنوات خبرة',
                    ),

                    verticalSpace(40),

                    const TPStatsRow(
                      leftTitle: 'أكثر من 150+',
                      leftSub: 'عميل',
                      midTitle: '4.9',
                      midSub: 'التقييم',
                      rightTitle: '8 سنوات',
                      rightSub: 'الخبرة',
                    ),

                    verticalSpace(40),

                    // الـ Panel الأبيض + Tabs + Content + أسفل (اتصال/أسعار)
                    _WhitePanel(
                      child: Column(
                        children: [
                          verticalSpace(10),
                          const _HandleBar(),
                          verticalSpace(12),
                          TPTabs(
                            activeIndex: _tabIndex,
                            onChanged: (i) => setState(() => _tabIndex = i),
                            labels: const [
                              'نبذة عني',
                              'الخبرة',
                              'التوافر',
                              'التقييمات',
                            ],
                          ),

                          verticalSpace(14),

                          _TabBodySwitcher(
                            index: _tabIndex,
                            about: TPAboutTab(
                              title: name,
                              body:
                                  "محمد علي كهربائي معتمد بخبرة 8 لاسنوات وهو مختص في التمديدات الكهربائية السكنية والتجارية، حيث أنجز العديد من المشاريع بدءًا من إعادة توصيل الاسلاك المنزلية...",
                            ),
                            experience: const TPExperienceTab(
                              body:
                                  'خبرة 8 سنوات في أعمال الكهرباء المنزلية والصيانة.',
                            ),
                            availability: const TPAvailabilityTab(
                              body:
                                  'متوفر للعمل داخل دمشق وحسب الحجز.\nالتوافر ضمن داخل المدينة.',
                            ),
                            reviews: const TPReviewsTab(
                              body: 'عمل ممتاز ومتقن.',
                            ),
                          ),

                          verticalSpace(60),

                          // شريط اسم + أزرار تواصل (مثل الصورة)
                          TPContactRow(
                            displayName: name,
                            subtitle: 'الكهربائي',
                            onCall: () {},
                            onChat: () {},
                          ),
                          verticalSpace(20),
                          // أسعار
                          const TPPricingRow(
                            hourlyPrice: '159.00 د.س',
                            dailyPrice: '159.00 د.س',
                          ),

                          verticalSpace(20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        // زر جدولة ثابت بأسفل الشاشة + زر مفضلة
        bottomNavigationBar: TPBottomBookingBar(
          buttonText: 'جدولة محمد',
          onBook: () {},
          onFav: () {},
        ),
      ),
    );
  }
}

class _BackgroundGradient extends StatelessWidget {
  const _BackgroundGradient();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            isDarkMode(context) ? Colors.black : Color(0xFFF7E1B8),
            Color(0xFFF7EFE2),
          ],
        ),
      ),
    );
  }
}

class _WhitePanel extends StatelessWidget {
  final Widget child;
  const _WhitePanel({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16).w,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(26).r),
      ),
      child: child,
    );
  }
}

class _HandleBar extends StatelessWidget {
  const _HandleBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46.w,
      height: 4.h,
      decoration: BoxDecoration(
        color: ColorsManager.rubyOrange,
        borderRadius: BorderRadius.circular(100).r,
      ),
    );
  }
}

class _TabBodySwitcher extends StatelessWidget {
  final int index;
  final Widget about;
  final Widget experience;
  final Widget availability;
  final Widget reviews;

  const _TabBodySwitcher({
    required this.index,
    required this.about,
    required this.experience,
    required this.availability,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return about;
      case 1:
        return experience;
      case 2:
        return availability;
      case 3:
        return reviews;
      default:
        return about;
    }
  }
}
