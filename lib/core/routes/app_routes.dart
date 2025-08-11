import 'package:flutter/material.dart';
import 'package:shop_advanced_graphql/core/app/common/screens/under_build_screen.dart';
import 'package:shop_advanced_graphql/core/features/auth/presentation/screens/login_screen.dart';
import 'package:shop_advanced_graphql/core/routes/base_route.dart';

class AppRoutes {
  static const String login = 'login';
  static const String testTwo = 'testTwo'; 

  static Route<void> onGenerateRoute(RouteSettings settings){

    final args = settings.arguments;
    switch (settings.name) {
      case login:
      return BaseRoute(page: LoginScreen());
        
      case testTwo:
      return BaseRoute(page: LoginScreen());
        
      default:
      return BaseRoute(page: PageUnderBuildScreen());
    }

  }
}