import 'package:flutter/material.dart';
import 'package:shop_advanced_graphql/core/app/style/colors/colors_dark.dart';
import 'package:shop_advanced_graphql/core/app/style/colors/colors_light.dart';
import 'package:shop_advanced_graphql/core/app/style/fonts/font_family_helper.dart';
import 'package:shop_advanced_graphql/core/app/style/themes/assets_extension.dart';
import 'package:shop_advanced_graphql/core/app/style/themes/color_extension.dart';

ThemeData themeDark() {
  return ThemeData(
    extensions: <ThemeExtension<dynamic>>[MyColors.dark,MyAssets.dark],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
        fontFamily: FontFamilyHelper.getLocalozedFontFamily(),
      )
    ),
  );
}

ThemeData themeLight() {
  return ThemeData(
    extensions: <ThemeExtension<dynamic>>[MyColors.light,MyAssets.light],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsLight.black,
        fontFamily: FontFamilyHelper.getLocalozedFontFamily(),
      )
    ),
  );
}
