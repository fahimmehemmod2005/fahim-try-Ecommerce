import 'package:fahim_try_ecommerce/utils/colors.dart';
import 'package:fahim_try_ecommerce/view/base/custom_button.dart';
import 'package:fahim_try_ecommerce/view/base/custom_textfromfield.dart';
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

  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passCtrl = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthController>(
          builder: (controller) {
            return Form(
              key: _formKey,
              child: ListView(
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
                        validator: (v){
                          if (v == null || v.isEmpty){
                            return "Please enter your valid email";
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 20,),

                      CustomTextFromField(
                        controller: _passCtrl,
                        obscureText: true,
                        hintText: "Enter Your Password",
                        lebelText: "Password",
                        validator: (v){
                          if (v == null || v.isEmpty){
                            return "Please enter your valid password";
                          }
                          return null;
                        },
                      ),
                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: TextButton(
                            onPressed: (){
                              Get.toNamed("/forgotScreen");
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
                            activeTrackColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(height: 170),
                      CustomButton(
                          title: "Login",
                          onPressed: (){
                            if (_formKey.currentState!.validate()){
                              Get.toNamed("/mainScreen");
                            }

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
                                  ..onTap = () { Get.toNamed("/signupScreen");},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],

              ),
            );
          }
      ),
    );
  }
}

