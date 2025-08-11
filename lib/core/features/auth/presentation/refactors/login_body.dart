import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_advanced_graphql/core/app/common/animations/animate_do.dart';
import 'package:shop_advanced_graphql/core/app/style/fonts/font_weight_helper.dart';
import 'package:shop_advanced_graphql/core/extensions/context_extension.dart';
import 'package:shop_advanced_graphql/core/features/auth/presentation/refactors/auth_custom_painter.dart';
import 'package:shop_advanced_graphql/core/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:shop_advanced_graphql/core/features/auth/presentation/widgets/dark_and_lang_buttons.dart';
import 'package:shop_advanced_graphql/core/features/auth/presentation/widgets/login/login_button.dart';
import 'package:shop_advanced_graphql/core/features/auth/presentation/widgets/login/login_text_form.dart';
import 'package:shop_advanced_graphql/core/language/lang_keys.dart';
import 'package:shop_advanced_graphql/core/widgets/text_app.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Add your login form widgets here Dark mode and language support
            DarkAndLangButtons(),
            // welcome Info
            SizedBox(height: 50.h),
            AuthTitleInfo(
              // use context translate in any text understand save
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            // login form
            SizedBox(height: 50.h),
            LoginTextForm(),
            SizedBox(height: 50.h),
            // login button
            LoginButton(),
            SizedBox(height: 30.h,),
            // Go to Signup Screen
            CustomFadeInDown(
              duration: 400,
              child: TextApp(text: context.translate(LangKeys.createAccount), theme: context.textStyle.copyWith(
                fontWeight: FontWeightHelper.bold,
                fontSize: 18.sp,
                color: context.color.bluePinkLight
              )),
            )
          ],
        ),
      ),
    );
  }
}