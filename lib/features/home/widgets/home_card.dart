import 'package:flutter/material.dart';
import '../../../core/utils/screen_utils.dart';
import '../../../core/themes/app_typography.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? imagePath;
  final String? count;
  final bool showArrow;
  final List<Color> gradientColors;

  const HomeCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.gradientColors,
    this.imagePath,
    this.count,
    this.showArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    ScreenUtils.init(context);

    return Container(
      padding: EdgeInsets.all(ScreenUtils.size(16)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ScreenUtils.size(20)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: gradientColors,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppTypography.semiBold20Black.copyWith(fontSize: 13),
                ),
                SizedBox(height: ScreenUtils.height(6)),
                Text(
                  subtitle,
                  style: AppTypography.medium12Right.copyWith(fontSize: 10),
                ),
              ],
            ),
          ),
          if (imagePath != null)
            Image.asset(imagePath!, height: ScreenUtils.height(70)),

          if (count != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: ScreenUtils.size(48),
                  width: ScreenUtils.size(48),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: Text(count!, style: AppTypography.semiBold20Black),
                ),
                if (showArrow)
                  Icon(Icons.arrow_forward_ios, size: ScreenUtils.size(12)),
              ],
            ),
        ],
      ),
    );
  }
}
