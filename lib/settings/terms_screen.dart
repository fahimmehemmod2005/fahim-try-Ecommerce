import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

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
        title: Text('Terms of Service'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1. Introduction',style: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Text('Lorem ipsum dolor sit amet consectetur. Elit ac gravida augue suspendisse in scelerisque pellentesque diam elementum. Lorem quam vitae mus metus tortor turpis at. Cras accumsan pharetra odio euismod metus leo neque duis.'
                ),
                SizedBox(height: 15,),
                Text('2. User Responsibilities',style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Text('Lorem ipsum dolor sit amet consectetur. Mattis et commodo lacus nisl vitae id. Fames egestas etiam risus ultrices risus. Porta nisl commodo sit id purus senectus ultrices.'
                ),
                SizedBox(height: 15,),
                Text('3. Privacy and Data Collection',style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Text('Lorem ipsum dolor sit amet consectetur. Elementum amet netus magna justo duis netus. Porttitor nulla erat sodales faucibus. Massa turpis nibh vel sit enim porta a.'
                ),
                SizedBox(height: 15,),
                Text('4. User Content',style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Text('Lorem ipsum dolor sit amet consectetur. Massa suscipit euismod interdum suspendisse id. Vitae sed quam amet dictumst vel sed integer morbi. Vel sed aenean ultricies in volutpat scelerisque id eget hendrerit.'
                ),
                SizedBox(height: 15,),
                Text('5. Subscription and Payment',style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Text('Lorem ipsum dolor sit amet consectetur. Id orci duis eget quis vitae pretium justo nisi. Mauris gravida netus ullamcorper orci. Pharetra nunc vestibulum feugiat eget convallis.'
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
