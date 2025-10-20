import 'package:fahim_try_ecommerce/view/pages/authentication%20&%20all/signup_screen.dart';
import 'package:fahim_try_ecommerce/view/pages/home/home_screen.dart';
import 'package:get/get.dart';
import '../view/pages/authentication & all/forgot_screen.dart';
import '../view/pages/authentication & all/newpassword_screen.dart';
import '../view/pages/authentication & all/verification_screen.dart';
import '../view/pages/login/login_screen.dart';
import '../view/pages/splash/splash_screen.dart';

class Routes{

  static String splashScreen="/";
  static String loginScreen="/loginScreen";
  static String homeScreen="/homeScreen";
  static String signupScreen="/signupScreen";
  static String forgotScreen="/forgotScreen";
  static String verificationScreen="/verificationScreen";
  static String newpasswordScreen="/newpasswordScreen";

}

List<GetPage> pages = [

  GetPage(name: Routes.splashScreen,
      page: ()=> SplashScreen(),
  ),

  GetPage(name: Routes.loginScreen,
      page: ()=> LoginScreen(),
  ),

  GetPage(name: Routes.homeScreen,
      page: ()=> HomeScreen()),

  GetPage(
  name: Routes.signupScreen,
      page: ()=> SignupScreen()),

  GetPage(
      name: Routes.forgotScreen,
      page: ()=> ForgotScreen()),

  GetPage(
      name: Routes.verificationScreen,
      page: ()=> VerificationScreen()),

  GetPage(
      name: Routes.newpasswordScreen,
      page: ()=> NewpasswordScreen()),
];