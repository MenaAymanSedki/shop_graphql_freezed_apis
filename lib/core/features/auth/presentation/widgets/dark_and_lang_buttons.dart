import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_advanced_graphql/core/app/common/animations/animate_do.dart';
import 'package:shop_advanced_graphql/core/app/style/fonts/font_weight_helper.dart';
import 'package:shop_advanced_graphql/core/extensions/context_extension.dart';
import 'package:shop_advanced_graphql/core/language/lang_keys.dart';
import 'package:shop_advanced_graphql/core/widgets/custom_linear_button.dart';
import 'package:shop_advanced_graphql/core/widgets/text_app.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(onPressed: () {
            // Handle dark mode toggle
          }, child: const Icon(Icons.light_mode_rounded)),
        ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            height: 44.h,
            width: 100.w,
            onPressed: () {
            // Handle language selection
          }, child: TextApp(text: context.translate(LangKeys.language), theme: context.textStyle.copyWith(
            fontWeight: FontWeightHelper.bold, fontSize: 16.sp,
            
          ))),
        ),
      ],
    );
  }
  }
