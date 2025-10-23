import 'package:fahim_try_ecommerce/settings/about_screen.dart';
import 'package:fahim_try_ecommerce/settings/privacy_screen.dart';
import 'package:fahim_try_ecommerce/settings/settings_all.dart';
import 'package:fahim_try_ecommerce/settings/terms_screen.dart';
import 'package:fahim_try_ecommerce/view/pages/authentication%20&%20all/signup_screen.dart';
import 'package:fahim_try_ecommerce/view/pages/home/components/product_shot.dart';
import 'package:fahim_try_ecommerce/view/pages/home/home_screen.dart';
import 'package:fahim_try_ecommerce/view/pages/home/view_product.dart';
import 'package:fahim_try_ecommerce/view/pages/mainScreen/main_Screen.dart';
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
  static String mainScreen="/mainScreen";
  static String settingsAll="/settingsAll";
  static String termsScreen="/termsScreen";
  static String privacyScreen="/privacyScreen";
  static String aboutScreen="/aboutScreen";
  static String viewProduct="/viewProduct";
  static String productShot="/productShot";


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

      GetPage(
        name: Routes.mainScreen,
        page: ()=> MainScreen()),

  GetPage(
      name: Routes.settingsAll,
      page: ()=> SettingsAll()),

  GetPage(
      name: Routes.termsScreen,
      page: ()=> TermsScreen()),

  GetPage(
      name: Routes.privacyScreen,
      page: ()=> PrivacyScreen()),

  GetPage(
      name: Routes.aboutScreen,
      page: ()=> AboutScreen()),

  GetPage(
      name: Routes.viewProduct,
      page: ()=> ViewProduct()),

  GetPage(
      name: Routes.productShot,
      page: ()=> ProductShot()),
];