import 'package:get/get.dart';

class AuthController extends GetxController{

  bool isRememberMe=false;

  onRememberMeChanged(value){
    isRememberMe=value;
    update();
  }

}