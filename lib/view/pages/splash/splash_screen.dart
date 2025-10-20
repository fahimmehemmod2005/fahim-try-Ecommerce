import 'package:fahim_try_ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../routs/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    jumpToNextPage();
    super.initState();
  }

  jumpToNextPage() {
    Future.delayed(Duration(seconds: 3),(){
      Get.offAllNamed(Routes.loginScreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColor,
      body: Center(
        child: SvgPicture.asset("assets/icons/Logo.svg"),
      ),
    );
  }
}
