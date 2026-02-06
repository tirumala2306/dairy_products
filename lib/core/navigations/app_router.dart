import 'package:dairy_products/features/home/screens/cow_rent_screen.dart';
import 'package:flutter/material.dart';
import 'package:dairy_products/core/utils/screen_utils.dart';
import 'package:dairy_products/widgets/app_background.dart';
import 'package:dairy_products/widgets/splash_screen.dart';
import 'package:dairy_products/features/home/screens/home_screen.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      /// SPLASH SCREEN
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      /// HOME SCREEN
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => Builder(
            builder: (context) {
              ScreenUtils.init(context);
              return const AppBackground(child: HomeScreen());
            },
          ),
        );
        
      case AppRoutes.cowRentDetail:
        return MaterialPageRoute(builder: (_) => const CowRentDetailScreen());

      /// DEFAULT (ERROR ROUTE)
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
