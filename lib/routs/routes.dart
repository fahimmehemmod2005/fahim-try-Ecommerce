import 'package:get/get.dart';
import '../view/pages/login/login_screen.dart';
import '../view/pages/splash/splash_screen.dart';

class Routes{

  static String SplashScreen="/";
  static String loginScreen="/login_screen";

}

List<GetPage> pages = [

  GetPage(name: Routes.SplashScreen,
      page: ()=> SplashScreen(),
  transition: Transition.noTransition),

  GetPage(name: Routes.loginScreen,
      page: ()=> LoginScreen(),
  transition: Transition.downToUp,
  transitionDuration: Duration(seconds: 3))
];