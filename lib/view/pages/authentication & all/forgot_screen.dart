import 'package:fahim_try_ecommerce/view/base/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/colors.dart';
import '../../base/custom_textfromfield.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {

  TextEditingController _emailCtrl = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(height: 40,),
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
           Text("Forgot Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600
                ),),
            SizedBox(height: 15,),
            SvgPicture.asset(
                  "assets/icons/Forgot1.svg",
            ),
            SizedBox(height: 80,),
            CustomTextFromField(
              controller: _emailCtrl,
              hintText: "Enter Your Email",
              lebelText: "Email Address",
              validator: (v){
                if (v == null || v.isEmpty){
                  return "Please enter your valid password";
                }
                return null;
              },
            ),
            SizedBox(height: 165,),
            Text(
                "Please write your email to receive a\n confirmation code to set a new password.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CustomColors.greyColor,
                ),
              ),

            SizedBox(height: 25,),
            CustomButton(
                title: 'Confirm Mail',
                onPressed: (){
                  if (_formKey.currentState!.validate()){
                    Get.toNamed("/verificationScreen");
                  }

                })
          ],
        ),
      ),
    );
  }
}

