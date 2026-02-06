import 'package:dairy_products/core/constants/asset_constants.dart';
import 'package:dairy_products/core/utils/screen_utils.dart';
import 'package:dairy_products/features/home/widgets/business_overview_card.dart';
import 'package:dairy_products/features/home/widgets/home_card.dart';
import 'package:dairy_products/features/home/widgets/home_search_bar.dart';
import 'package:dairy_products/features/home/widgets/recent_orders_widget.dart';
import 'package:dairy_products/widgets/custom_app_bar.dart';
import 'package:dairy_products/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          /// Scrollable content
          SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: ScreenUtils.height(120), // space for nav bar
            ),
            child: Column(
              children: [
                CustomAppBar(
                  isHome: true,
                  title: "John smith",
                  subtitle: "Hello sir welcome back",
                  profileImage: "assets/profile.jpg",
                ),

                SizedBox(height: ScreenUtils.height(20)),

                HomeSearchBar(),
                BusinessOverviewCard(),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtils.width(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: HomeCard(
                              title: "Products",
                              subtitle: "Check all the products",
                              imagePath: AssetConstants.image1,
                              gradientColors: [
                                Color(0x1F19716D),
                                Color(0x104DBBA1),
                              ],
                            ),
                          ),
                          SizedBox(width: ScreenUtils.width(12)),
                          Expanded(
                            child: HomeCard(
                              title: "Donations",
                              subtitle: "See the total donations",
                              imagePath: AssetConstants.image2,
                              gradientColors: [
                                Color(0x1F4B1971),
                                Color(0x10B54DBB),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: ScreenUtils.height(16)),

                      Row(
                        children: [
                          Expanded(
                            child: HomeCard(
                              title: "Active Orders",
                              subtitle: "See all the active orders",
                              count: "42",
                              showArrow: true,
                              gradientColors: [
                                Color(0x1A197149),
                                Color(0x1A4DBB5A),
                              ],
                            ),
                          ),
                          SizedBox(width: ScreenUtils.width(20)),
                          Expanded(
                            child: HomeCard(
                              title: "Pending Orders",
                              subtitle: "See all the pending orders",
                              count: "12",
                              showArrow: true,
                              gradientColors: [
                                Color(0x1AEB7706),
                                Color(0x1AEFBA5B),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: ScreenUtils.height(20)),

                      Row(
                        children: [
                          Expanded(
                            child: HomeCard(
                              title: "Refund",
                              subtitle: "Check the refunds requested",
                              count: "6",
                              showArrow: true,
                              gradientColors: [
                                Color(0x1A092B68),
                                Color(0x1A0E6DDC),
                              ],
                            ),
                          ),
                          SizedBox(width: ScreenUtils.width(20)),
                          Expanded(
                            child: HomeCard(
                              title: "Cancelled",
                              subtitle: "Orders Cancelled",
                              count: "12",
                              showArrow: true,
                              gradientColors: [
                                Color(0x1A680909),
                                Color(0x1ADC0E0E),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                RecentOrdersWidget(),
              ],
            ),
          ),

          /// Fixed Bottom Navigation
          CustomBottomNav(currentIndex: 0, onTap: (index) {}),
        ],
      ),
    );
  }
}
