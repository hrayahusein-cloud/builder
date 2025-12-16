
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/tp_bottom_booking_bar.dart';
import 'widgets/tp_contact_row.dart';
import 'widgets/tp_header_bar.dart';
import 'widgets/tp_pricing_row.dart';
import 'widgets/tp_profile_card.dart';
import 'widgets/tp_stats_row.dart';
import 'widgets/tp_tabs.dart';  
import 'widgets/tp_top_identity.dart';
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
                padding: const EdgeInsets.only(bottom: 110),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    TPHeaderBar(
                      onBack: () => Navigator.pop(context),
                    ),
                    const SizedBox(height: 10),

                    TPTopIdentity(name: name, role: role),
                    const SizedBox(height: 14),

                    TPProfileCard(
                      imagePath: imagePath,
                      badgeText: '159 د.س/ساعة',
                      specialtyTitle: 'فني إصلاح محترف',
                      personName: name,
                      experienceLine: '8 سنوات خبرة',
                    ),

                    const SizedBox(height: 14),

                    const TPStatsRow(
                      leftTitle: 'أكثر من 150+',
                      leftSub: 'عميل',
                      midTitle: '4.9',
                      midSub: 'التقييم',
                      rightTitle: '8 سنوات',
                      rightSub: 'الخبرة',
                    ),

                    const SizedBox(height: 16),

                    // الـ Panel الأبيض + Tabs + Content + أسفل (اتصال/أسعار)
                    _WhitePanel(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const _HandleBar(),
                          const SizedBox(height: 12),

                          TPTabs(
                            activeIndex: _tabIndex,
                            onChanged: (i) => setState(() => _tabIndex = i),
                            labels: const ['نبذة عني', 'الخبرة', 'التوافر', 'التقييمات'],
                          ),

                          const SizedBox(height: 14),

                          _TabBodySwitcher(
                            index: _tabIndex,
                            about: TPAboutTab(
                              title: name,
                              body:
                                  'محمد علي كهربائي محترف، متخصص بخبرة 8 سنوات في أعمال التمديدات الكهربائية الداخلية والخارجية. أنجزت العديد من المشاريع بدءاً من إعادة توصيل الأسلاك المنزلية...',
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
                              rating: 4.9,
                              totalClients: 150,
                              body: 'عمل ممتاز ومتقن.',
                            ),
                          ),

                          const SizedBox(height: 18),

                          // شريط اسم + أزرار تواصل (مثل الصورة)
                          TPContactRow(
                            displayName: name,
                            subtitle: 'الكهربائي',
                            onCall: () {},
                            onChat: () {},
                          ),

                          const SizedBox(height: 12),

                          // أسعار
                          const TPPricingRow(
                            hourlyPrice: '159.00 د.س',
                            dailyPrice: '159.00 د.س',
                          ),

                          const SizedBox(height: 18),
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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFF7E1B8),
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(26)),
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
      width: 46,
      height: 4,
      decoration: BoxDecoration(
        color: const Color(0xFFEF7022),
        borderRadius: BorderRadius.circular(100),
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
