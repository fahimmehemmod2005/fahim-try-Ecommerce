import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

Future init()async{
  Get.lazyPut(() => AuthController());
}