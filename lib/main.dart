import 'package:fahim_try_ecommerce/routs/routes.dart';
import 'package:fahim_try_ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helpers/di.dart' as di;

void main() async{
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Manrope",
        primaryColor: CustomColors.primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: Routes.SplashScreen,
      getPages: pages,
    );
  }
}
