import 'package:dairy_products/core/constants/asset_constants.dart';
import 'package:dairy_products/core/themes/app_typography.dart';
import 'package:flutter/material.dart';
import '../core/themes/app_colors.dart';
import '../core/utils/screen_utils.dart';

class CustomAppBar extends StatelessWidget {
  final bool isHome;
  final String? title;
  final String? subtitle;
  final String? profileImage;

  const CustomAppBar({
    super.key,
    this.isHome = false,
    this.title,
    this.subtitle,
    this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtils.width(16),
          vertical: ScreenUtils.height(20),
        ),
        decoration: BoxDecoration(color: AppColors.greenColor),
        child: isHome ? _homeHeader(context) : _innerHeader(context),
      ),
    );
  }

  /// HOME HEADER
  Widget _homeHeader(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: ScreenUtils.size(22),
          backgroundImage: AssetImage(AssetConstants.profilePng),
        ),

        SizedBox(width: ScreenUtils.width(10)),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title ?? "", style: AppTypography.semiBold20),
            Text(subtitle ?? "", style: AppTypography.semiBold12),
          ],
        ),

        const Spacer(),

        Image.asset(
          AssetConstants.chatIcon,
          width: ScreenUtils.size(24),
          color: Colors.white,
        ),

        SizedBox(width: ScreenUtils.width(12)),

        Image.asset(
          AssetConstants.notificationIcon,
          width: ScreenUtils.size(24),
          color: Colors.white,
        ),

        SizedBox(width: ScreenUtils.width(12)),

        Image.asset(
          AssetConstants.appbar,
          width: ScreenUtils.size(24),
          color: Colors.white,
        ),
      ],
    );
  }

  /// INNER SCREEN HEADER
  Widget _innerHeader(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),

        Expanded(
          child: Center(
            child: Text(
              title ?? "",
              style: TextStyle(
                color: Colors.white,
                fontSize: ScreenUtils.size(18),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        SizedBox(width: ScreenUtils.width(40)), // balance spacing
      ],
    );
  }
}
