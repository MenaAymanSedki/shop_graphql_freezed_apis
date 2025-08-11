import 'package:flutter/material.dart';
import 'package:shop_advanced_graphql/core/app/style/themes/color_extension.dart';
import 'package:shop_advanced_graphql/core/app/style/themes/assets_extension.dart';
import 'package:shop_advanced_graphql/core/language/app_localizations.dart';

extension ContectExt on BuildContext {
//color

  MyColors get color => Theme.of(this).extension<MyColors>()!;

//Images

  MyAssets get assets => Theme.of(this).extension<MyAssets>()!;

  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  // language 
  String translate(String langkey){
    return AppLocalizations.of(this)!.translate(langkey).toString();
  }

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}
