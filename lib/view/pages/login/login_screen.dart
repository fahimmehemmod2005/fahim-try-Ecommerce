import 'package:fahim_try_ecommerce/utils/colors.dart';
import 'package:fahim_try_ecommerce/view/base/custom_button.dart';
import 'package:fahim_try_ecommerce/view/base/custom_textfromfield.dart';
import 'package:fahim_try_ecommerce/view/pages/authentication%20&%20all/forgot_screen.dart';
import 'package:fahim_try_ecommerce/view/pages/authentication%20&%20all/signup_screen.dart';
import 'package:fahim_try_ecommerce/view/pages/home/home_screen.dart';
import 'package:flutter/gestures.dart';
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
            return ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  SizedBox(height: 100,),
                   Text("Welcome",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600
                        ),),
                    Text(
                      "Please enter your date to continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CustomColors.greyColor,
                      ),
                    ),
                    SizedBox(height: 160,),
                    CustomTextFromField(
                      controller: _emailCtrl,
                      hintText: "Enter Your Email",
                      lebelText: "Email",
                    ),

                    SizedBox(height: 20,),

                    CustomTextFromField(
                      controller: _passCtrl,
                      obscureText: true,
                      hintText: "Enter Your Password",
                      lebelText: "Password",
                    ),
                    Align(
                      alignment: AlignmentGeometry.topRight,
                      child: TextButton(
                          onPressed: (){
                            Get.to(ForgotScreen());
                          },
                          child: Text(
                            "Forget Password",
                            style: TextStyle(
                              color: Colors.red,
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
                          activeThumbColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(height: 170),
                    CustomButton(
                        title: "Login",
                        onPressed: (){
                          Get.to(HomeScreen());
                        },
                    ),
                    SizedBox(height: 25),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: "Don't have an account?",
                                style: TextStyle(
                                    color: Colors.black),
                            ),
                            TextSpan(text: ' Sign up',
                            style: TextStyle(
                              color: CustomColors.primaryColor,
                            ),
                            recognizer: TapGestureRecognizer()
                                ..onTap = () {Get.to(SignupScreen());}
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],

            );
          }
      ),
    );
  }
}

