import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SettingsAll extends StatelessWidget {
  const SettingsAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.grey[200],
            ),
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ListTile(
              onTap: (){
                Get.toNamed('/termsScreen');
              },
              leading: SvgPicture.asset('assets/icons/info-empty.svg'),
              title: Text('Terms of Service'),
            ),
            SizedBox(height: 5,),
            ListTile(
              onTap: (){
                Get.toNamed('/privacyScreen');
              },
              leading: SvgPicture.asset('assets/icons/security-safe.svg'),
              title: Text('Privacy Policy'),
            ),
            SizedBox(height: 5,),
            ListTile(
              onTap: (){
                Get.toNamed('/aboutScreen');
              },
              leading: SvgPicture.asset('assets/icons/shield-question.svg'),
              title: Text('About Us'),
            ),
          ],
        ),
      ),
    );
  }
}
