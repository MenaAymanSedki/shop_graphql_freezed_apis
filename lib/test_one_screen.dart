import 'package:flutter/material.dart';
import 'package:shop_advanced_graphql/core/extensions/context_extension.dart';
import 'package:shop_advanced_graphql/core/language/lang_keys.dart';
import 'package:shop_advanced_graphql/core/routes/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('One'),
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){
            context.pushNamed(AppRoutes.testTwo);
                    
          }, child:  Text('Go Two Screen',style: TextStyle(
            color: context.color.mainColor,
            fontSize: 25,
          ),)),
          Image.asset(context.assets.homeBg??''),

           Text(
            context.translate(LangKeys.appName),style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),),
        ],
      ),
    );
  }
}