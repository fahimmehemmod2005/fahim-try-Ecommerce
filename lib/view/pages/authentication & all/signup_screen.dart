import 'package:fahim_try_ecommerce/view/base/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../../../controllers/auth_controller.dart';
import '../../base/custom_textfromfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  TextEditingController _usernameCtrl = TextEditingController();
  TextEditingController _passCtrl = TextEditingController();
  TextEditingController _emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthController>(
        builder:(controller){
           return ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              SizedBox(height: 45,),
              Align(
                alignment: AlignmentGeometry.topLeft,
                child:  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                    ),
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back)),
              ),
              SizedBox(height: 15,),
               Center(
                 child: Text(
                      "Sign Up",
                      style: TextStyle(
                  fontSize: 28,
                        fontWeight: FontWeight.bold,
                               ),
                    ),
               ),
              SizedBox(height: 152,),
              CustomTextFromField(
                controller: _usernameCtrl,
                hintText: "Enter Your Username",
                lebelText: "Username",
              ),

              SizedBox(height: 20,),

              CustomTextFromField(
                controller: _passCtrl,
                obscureText: true,
                hintText: "Enter Your Password",
                lebelText: "Password",
              ),
              SizedBox(height: 20,),
              CustomTextFromField(
                controller: _emailCtrl,
                hintText: "Enter Your Email",
                lebelText: "Email Address",
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text("Remember Me"),
                  Spacer(),
                  Switch(
                    value: Get
                        .find<AuthController>()
                        .isRememberMe,
                    onChanged: controller.onRememberMeChanged,
                    activeThumbColor: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 160,),
              CustomButton(title: 'Sign up', onPressed: (){})
            ],
          );
        }
      ),
    );
  }
}
