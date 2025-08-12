import 'package:flutter/material.dart';
import 'package:shop_advanced_graphql/core/extensions/context_extension.dart';
import 'package:shop_advanced_graphql/core/features/auth/presentation/refactors/auth_custom_painter.dart';
import 'package:shop_advanced_graphql/core/features/auth/presentation/refactors/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(double.infinity, 150),
        painter: AuthCustomPainter(
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkDark!,
             
            ],
          ),
        ),
      ),
      body: SignUpBody(),
    );
  }
}