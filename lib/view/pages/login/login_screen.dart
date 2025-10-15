import 'package:fahim_try_ecommerce/utils/colors.dart';
import 'package:fahim_try_ecommerce/view/base/custom_textfromfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _emailCtrl = TextEditingController();
  TextEditingController _passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthController>(
          builder: (controller) {
            return SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 60,),
                    Center(
                      child: Text("Welcome",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600
                        ),),
                    ),
                    Text(
                      "Please enter your date to continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CustomColors.greyColor,
                      ),
                    ),
                    SizedBox(height: 164,),
                    CustomTextFromField(
                      controller: _emailCtrl,
                      hintText: "Enter Your Email",
                      lebelText: "Email",
                    ),

                    SizedBox(height: 10,),

                    CustomTextFromField(
                      controller: _passCtrl,
                      obscureText: true,
                      hintText: "Enter Your Password",
                      lebelText: "Password",
                    ),
                    Align(
                      alignment: AlignmentGeometry.topRight,
                      child: TextButton(
                          onPressed: (){},
                          child: Text(
                            "Forget Password",
                            style: TextStyle(
                              color: CustomColors.primaryColor,
                            ),
                          )),
                    ),
                    Row(
                      children: [
                        Text("Remember Me"),
                        Spacer(),
                        Switch(
                          value: Get.find<AuthController>().isRememberMe,
                          onChanged: controller.onRememberMeChanged,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}

