import 'package:flutter/material.dart';
import 'package:shop_advanced_graphql/core/app/common/screens/under_build_screen.dart';
import 'package:shop_advanced_graphql/core/routes/base_route.dart';
import 'package:shop_advanced_graphql/test_one_screen.dart';
import 'package:shop_advanced_graphql/test_two_screen.dart';

class AppRoutes {
  static const String testOne = 'testOne';
  static const String testTwo = 'testTwo'; 

  static Route<void> onGenerateRoute(RouteSettings settings){

    final args = settings.arguments;
    switch (settings.name) {
      case testOne:
      return BaseRoute(page: TestOneScreen());
        
      case testTwo:
      return BaseRoute(page: TestTwoScreen());
        
      default:
      return BaseRoute(page: PageUnderBuildScreen());
    }

  }
}