import 'package:flutter/material.dart';
import '../../../core/utils/screen_utils.dart';
import '../../../core/constants/asset_constants.dart';
import '../../../core/themes/app_typography.dart';

class BusinessOverviewCard extends StatelessWidget {
  const BusinessOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtils.init(context);

    return Container(
      height: ScreenUtils.height(240),
      padding: EdgeInsets.all(ScreenUtils.width(16)),
      margin: EdgeInsets.all(ScreenUtils.width(16)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ScreenUtils.size(20)),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0x0A197149), Color(0x0A4DBB5A)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Business overview",
                style: AppTypography.regular16.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: ScreenUtils.size(13),
                  color: Color.fromRGBO(0, 0, 0, 0.9),
                ),
              ),
              Row(
                children: [
                  Text("Filters", style: AppTypography.medium12Right),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ],
          ),

          SizedBox(height: ScreenUtils.height(14)),

          /// Main Content
          Expanded(
            child: Row(
              children: [
                /// Pie Chart
                SizedBox(
                  width: ScreenUtils.width(140),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        AssetConstants.piechart,
                        height: ScreenUtils.height(140),
                      ),
                      Text("66", style: AppTypography.semiBold20Black),
                    ],
                  ),
                ),

                SizedBox(width: ScreenUtils.width(16)),

                /// Right Section (Flexible)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quick Review",
                        style: AppTypography.semiBold20Black,
                      ),

                      SizedBox(height: ScreenUtils.height(20)),

                      _reviewItem(
                        color: const Color(0xFF6C83F1),
                        title: "cow rents",
                        value: "+ 25",
                        isUp: true,
                      ),
                      _reviewItem(
                        color: const Color(0xFF63C087),
                        title: "orders",
                        value: "12",
                        isUp: false,
                      ),
                      _reviewItem(
                        color: const Color(0xFFF4A340),
                        title: "Donations",
                        value: "+3",
                        isUp: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _reviewItem({
    required Color color,
    required String title,
    required String value,
    required bool isUp,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: ScreenUtils.height(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Left section
          Row(
            children: [
              Container(
                width: ScreenUtils.size(10),
                height: ScreenUtils.size(10),
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
              SizedBox(width: ScreenUtils.width(8)),
              Text(title, style: AppTypography.regular13),
            ],
          ),

          /// Right section
          Row(
            children: [
              Text(
                value,
                style: AppTypography.regular13.copyWith(fontSize: 10),
              ),
              Icon(
                isUp ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                color: isUp ? Colors.green : Colors.red,
                size: ScreenUtils.size(20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
