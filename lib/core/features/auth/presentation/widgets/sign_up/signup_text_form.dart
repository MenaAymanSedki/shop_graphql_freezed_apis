import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_advanced_graphql/core/app/common/animations/animate_do.dart';
import 'package:shop_advanced_graphql/core/extensions/context_extension.dart';
import 'package:shop_advanced_graphql/core/language/lang_keys.dart';
import 'package:shop_advanced_graphql/core/utils/app_regex.dart';
import 'package:shop_advanced_graphql/core/widgets/custom_text_field.dart';

class SignupTextForm extends StatefulWidget {
  const SignupTextForm({super.key});

  @override
  State<SignupTextForm> createState() => _SignupTextFormState();
}

class _SignupTextFormState extends State<SignupTextForm> {
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomFadeInRight(
          duration: 400,
          child: CustomTextField(
            controller: TextEditingController(),
            hintText: context.translate(LangKeys.fullName),
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 4) {
                return context.translate(LangKeys.validName);
              }
              return null;
            },
          ),
        ),
        SizedBox(height: 20.h),
        CustomFadeInRight(
          duration: 400,
          child: CustomTextField(
            controller: TextEditingController(),
            hintText: context.translate(LangKeys.email),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (!AppRegex.isEmailValid(value ?? '')) {
                return context.translate(LangKeys.validEmail);
              }
              return null;
            },
          ),
        ),
        SizedBox(height: 20.h),
        CustomFadeInRight(
          duration: 400,
          child: CustomTextField(
            controller: TextEditingController(),
            hintText: context.translate(LangKeys.password),
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return context.translate(LangKeys.validPasswrod);
              }
              return null;
            },
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: isShowPassword
                    ? Icon(
                        Icons.visibility_off,
                        color: context.color.textColor,
                      )
                    : Icon(
                        Icons.visibility,
                        color: context.color.textColor,
                      )),
          ),
        ),
      ],
    ));
  }
}
