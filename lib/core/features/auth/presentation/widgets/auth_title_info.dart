import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_advanced_graphql/core/app/common/animations/animate_do.dart';
import 'package:shop_advanced_graphql/core/app/style/fonts/font_weight_helper.dart';
import 'package:shop_advanced_graphql/core/extensions/context_extension.dart';
import 'package:shop_advanced_graphql/core/widgets/text_app.dart';

class AuthTitleInfo extends StatelessWidget {
  final String title;
  final String description;
  const AuthTitleInfo(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          TextApp(
              text: title,
              theme: context.textStyle
                  .copyWith(fontSize: 24.sp, color: context.color.textColor,fontWeight: FontWeightHelper.bold)),
          SizedBox(height: 10.h),
          TextApp(
            textAlign: TextAlign.center,
              text: description,
              theme: context.textStyle
                  .copyWith(fontSize: 16.sp, color: context.color.textColor,fontWeight: FontWeightHelper.medium)),
        ],
      ),
    );
  }
}
