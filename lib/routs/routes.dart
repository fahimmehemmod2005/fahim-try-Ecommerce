import 'package:fahim_try_ecommerce/view/pages/authentication%20&%20all/signup_screen.dart';
import 'package:fahim_try_ecommerce/view/pages/home/home_screen.dart';
import 'package:get/get.dart';
import '../view/pages/login/login_screen.dart';
import '../view/pages/splash/splash_screen.dart';

class Routes{

  static String SplashScreen="/";
  static String loginScreen="/login_screen";
  static String HomeScreen="/HomeScreen";
  static String SignupScreen="/SignupScreen";

}

List<GetPage> pages = [

  GetPage(name: Routes.SplashScreen,
      page: ()=> SplashScreen(),
  ),

  GetPage(name: Routes.loginScreen,
      page: ()=> LoginScreen(),
  ),

  GetPage(name: Routes.HomeScreen,
      page: ()=> HomeScreen()),

  GetPage(
  name: Routes.SignupScreen,
      page: ()=> SignupScreen()),
];