import 'dart:async';

import 'package:get/get.dart';

class AuthController extends GetxController {
  bool isRememberMe = false;

  onRememberMeChanged(value) {
    isRememberMe = value;
    update();
  }

  RxInt secondsRemaining = 30.obs; // initial timer seconds
  RxBool enableResend = false.obs;
  Timer? timer;

  dispostTimer(){
    timer?.cancel();
    secondsRemaining.value = 30;
    enableResend.value = false;
  }


  void startTimer() {
    timer?.cancel();
    secondsRemaining.value = 30;
    enableResend.value = false;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        secondsRemaining.value--;
      } else {
        enableResend.value = true;
        timer.cancel();
      }
    });
  }
}