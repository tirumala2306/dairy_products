import 'package:dairy_products/core/themes/app_typography.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/screen_utils.dart';
import '../../../core/themes/app_colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtils.init(context);

    return Container(
      height: ScreenUtils.height(48),
      padding: EdgeInsets.symmetric(horizontal: ScreenUtils.width(16)),
      margin: EdgeInsets.symmetric(horizontal: ScreenUtils.width(16)),
      decoration: BoxDecoration(
        gradient: AppColors.backgroundGradient, // glass background
        borderRadius: BorderRadius.circular(ScreenUtils.size(24)),
        border: Border.all(color: AppColors.searchBorder, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.36),
            blurRadius: ScreenUtils.size(4),
            offset: const Offset(0, 1),
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.search, color: Color.fromRGBO(0, 0, 0, 0.6)),
              SizedBox(width: ScreenUtils.width(10)),
              const Text("Search", style: AppTypography.regular16),
            ],
          ),

          /// Mic icon (use asset if needed)
          Icon(Icons.mic_none, color: Color.fromRGBO(0, 0, 0, 0.6)),
        ],
      ),
    );
  }
}
