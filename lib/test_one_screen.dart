import 'package:flutter/material.dart';
import 'package:shop_advanced_graphql/core/extensions/context_extension.dart';
import 'package:shop_advanced_graphql/core/routes/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: const Text('One'),
      ),
      body: Center(
        child: 
        TextButton(onPressed: (){
          context.pushNamed(AppRoutes.testTwo);

        }, child: const Text('Go Two Screen',style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),)),
      ),
    );
  }
}