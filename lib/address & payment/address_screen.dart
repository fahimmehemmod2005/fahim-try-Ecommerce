import 'package:fahim_try_ecommerce/view/base/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          style: IconButton.styleFrom(backgroundColor: Colors.grey[200]),
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Address'),
        centerTitle: true,
      ),
      body: GetBuilder<AuthController>(
        builder: (controller) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Country', style: TextStyle(fontSize: 16)),
                           SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor:  Color(0xFFF0F0F0),
                            ),
                          ),
                        ],
                      ),
                    ),
                     SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('City', style: TextStyle(fontSize: 16)),
                           SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor:  Color(0xFFF0F0F0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 24),
                 Text('Phone Number', style: TextStyle(fontSize: 16)),
                 SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor:  Color(0xFFF0F0F0),
                  ),
                ),
                 SizedBox(height: 24),
                 Text('Address', style: TextStyle(fontSize: 16)),
                 SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF0F0F0),
                  ),
                ),
                SizedBox(height: 10,),
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
                SizedBox(height: 180),
                CustomButton(title: 'Save Address', onPressed: () {}),
              ],
            ),
          );
        },
      ),
    );
  }
}
