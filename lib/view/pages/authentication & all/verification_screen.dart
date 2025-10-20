import 'package:fahim_try_ecommerce/controllers/auth_controller.dart';
import 'package:fahim_try_ecommerce/view/base/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../../helpers/time_formetter.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final AuthController _authController = Get.find<AuthController>();
  final TextEditingController _pinPutController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _authController.startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _authController.dispostTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(height: 45),
          Align(
            alignment: AlignmentGeometry.topLeft,
            child: IconButton(
              style: IconButton.styleFrom(backgroundColor: Colors.grey[200]),
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Forgot Password",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          SvgPicture.asset("assets/icons/Forgot1.svg"),
          SizedBox(height: 60),
          Form(
            key: _formKey,
            child: Center(
              child: Obx(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Pinput(
                      controller: _pinPutController,
                      length: 4,
                      defaultPinTheme: PinTheme(
                        height: 98,
                        width: 77,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      validator: (v){
                        if (v!.length < 4){
                         return "Please enter your valid code";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 130),
                    _authController.enableResend.value ? TextButton(
                            onPressed: () {
                              _authController.startTimer();
                            },
                            child: Text("Resend Code"),
                          )
                        : RichText(
                            text: TextSpan(
                              text: formatTime(
                                _authController.secondsRemaining.value,
                              ),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              children: [
                                TextSpan(
                                  text: " resend confirmation code.",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          CustomButton(
            title: "Confirm Code",
            onPressed: () {
              if (_formKey.currentState!.validate()){
                Get.toNamed("/newpasswordScreen");
              }
            },
          ),
        ],
      ),
    );
  }
}
