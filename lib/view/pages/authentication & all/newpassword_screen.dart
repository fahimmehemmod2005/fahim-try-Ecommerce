import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/colors.dart';
import '../../base/custom_button.dart';
import '../../base/custom_textfromfield.dart';

class NewpasswordScreen extends StatefulWidget {
  const NewpasswordScreen({super.key});

  @override
  State<NewpasswordScreen> createState() => _NewpasswordScreenState();
}

class _NewpasswordScreenState extends State<NewpasswordScreen> {

  TextEditingController _passCtrl = TextEditingController();
  TextEditingController _confirmCtrl = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
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
              Text("New Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600
                ),),
              SizedBox(height: 186,),
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
              SizedBox(height: 20,),
              CustomTextFromField(
                controller: _confirmCtrl,
                obscureText: true,
                hintText: "Enter Your Password",
                lebelText: "Confirm Password",
                validator: (v){
                  if (v == null || v.isEmpty){
                    return "Please enter your valid password";
                  }
                  return null;
                },
              ),
              SizedBox(height: 240,),
              Text(
                "Please write your new password.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CustomColors.greyColor,
                ),
              ),
              SizedBox(height: 25,),
              CustomButton(title: "Confirm", onPressed: () {
                if (_formKey.currentState!.validate()){
                  Get.toNamed("/loginScreen");
                }
              }),
            ],
          ),
      ),
    );
  }
}
