import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_advanced_graphql/core/app/common/screens/no_network_Screen.dart';
import 'package:shop_advanced_graphql/core/app/connectvity_controller.dart';
import 'package:shop_advanced_graphql/core/app/style/themes/app_theme.dart';
import 'package:shop_advanced_graphql/core/app/style/themes/color_extension.dart';
import 'package:shop_advanced_graphql/core/extensions/context_extension.dart';
import 'package:shop_advanced_graphql/core/language/app_localizations_setup.dart';
import 'package:shop_advanced_graphql/core/routes/app_routes.dart';

class MenaStoreApp extends StatelessWidget {
  const MenaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectvityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              title: 'Mena Store',
              locale: Locale('en'),
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localeResolutionCallback: AppLocalizationsSetup.localeResolutionCallback,
              localizationsDelegates:AppLocalizationsSetup.localizationsDelegates,
              // iwant main color there toogle with light or dark
              themeMode: ThemeMode.system,
              theme: themeDark().copyWith(
                scaffoldBackgroundColor: Color(0xFF242C3B)
              ),
              builder: (context, widget) {
                return GestureDetector(
                  onTap: (){
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  child: Scaffold(
                    body: Builder(builder: (context){
                       ConnectvityController.instance.init();
                       return widget!; 
                    },
                  ),),
                );
              },
              onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.login,
            ),
          );
          
        }else{
         return MaterialApp(
            title: 'Flutter Demo',
            theme: themeDark(),
            home: const NoNetworkScreen(),
          );
           
        }
      },
    );
  }
}