import 'package:dairy_products/core/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:dairy_products/core/themes/app_colors.dart';
import 'package:dairy_products/core/utils/screen_utils.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  Widget _navIcon({
    required String icon,
    required String selectedIcon,
    required bool selected,
  }) {
    return Image.asset(
      selected ? selectedIcon : icon,
      width: ScreenUtils.size(22),
      height: ScreenUtils.size(22),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtils.init(context);

    return Positioned(
      bottom: ScreenUtils.height(24),
      left: ScreenUtils.width(8),
      right: ScreenUtils.width(8),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtils.width(8),
          vertical: ScreenUtils.height(8),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(ScreenUtils.size(50)),
          boxShadow: [
            BoxShadow(
              color: AppColors.boxShadow,
              blurRadius: ScreenUtils.size(12),
              offset: Offset(0, ScreenUtils.height(4)),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTap,
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,

          selectedItemColor: AppColors.bottomSelectedColor,
          unselectedItemColor: AppColors.black,

          items: [
            BottomNavigationBarItem(
              icon: _navIcon(
                icon: AssetConstants.home,
                selectedIcon: AssetConstants.homeSelected,
                selected: currentIndex == 0,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: _navIcon(
                icon: AssetConstants.products,
                selectedIcon: AssetConstants.productsSelected,
                selected: currentIndex == 1,
              ),
              label: "Products",
            ),
            BottomNavigationBarItem(
              icon: _navIcon(
                icon: AssetConstants.orders,
                selectedIcon: AssetConstants.orders,
                selected: currentIndex == 2,
              ),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: _navIcon(
                icon: AssetConstants.donations,
                selectedIcon: AssetConstants.donations,
                selected: currentIndex == 3,
              ),
              label: "Donations",
            ),
          ],
        ),
      ),
    );
  }
}
