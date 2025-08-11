import 'package:flutter/material.dart';
import 'package:shop_advanced_graphql/core/app/style/themes/assets_extension.dart';
import 'package:shop_advanced_graphql/core/app/style/themes/color_extension.dart';

ThemeData themeDark() {
  return ThemeData(
    extensions: <ThemeExtension<dynamic>>[MyColors.dark,MyAssets.dark],
    useMaterial3: true,
  );
}

ThemeData themeLight() {
  return ThemeData(
    extensions: <ThemeExtension<dynamic>>[MyColors.light,MyAssets.light],
    useMaterial3: true,
  );
}
