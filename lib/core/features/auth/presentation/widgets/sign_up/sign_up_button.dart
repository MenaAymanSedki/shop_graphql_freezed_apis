import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_advanced_graphql/core/app/common/animations/animate_do.dart';
import 'package:shop_advanced_graphql/core/app/style/fonts/font_weight_helper.dart';
import 'package:shop_advanced_graphql/core/extensions/context_extension.dart';
import 'package:shop_advanced_graphql/core/language/lang_keys.dart';
import 'package:shop_advanced_graphql/core/widgets/custom_linear_button.dart';
import 'package:shop_advanced_graphql/core/widgets/text_app.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 600,
      
      child: CustomLinearButton(
        height: 50.h,
        width: MediaQuery.of(context).size.width,
        onPressed: () {}, child: TextApp(text: context.translate(LangKeys.signUp), theme: context.textStyle.copyWith(
        fontWeight: FontWeightHelper.bold,
        fontSize: 18.sp,
        
      ))),
    );
  }
}