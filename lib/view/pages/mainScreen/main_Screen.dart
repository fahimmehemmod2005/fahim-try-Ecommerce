import 'package:fahim_try_ecommerce/view/base/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/colors.dart';
import '../cart/cart_screen.dart';
import '../home/home_screen.dart';
import '../wishlist/wish_list.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = <Widget>[ HomeScreen(), WishList(), CartScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: _customDrawer(),
      drawerScrimColor: Color(0xff1D1E20).withOpacity(0.40),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: selectedIndex == 0
                  ? CustomColors.primaryColor
                  : Color(0xff8F959E),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/fev.svg',
              color: selectedIndex == 1
                  ? CustomColors.primaryColor
                  : Color(0xff8F959E),
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: selectedIndex == 2
                  ? CustomColors.primaryColor
                  : Color(0xff8F959E),
            ),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
_customDrawer() {
  return Drawer(
    width: 330,
    child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
           IconButton(
               onPressed: (){
                 Get.back(closeOverlays: true);
               },
               icon: SvgPicture.asset('assets/icons/menu_arrow.svg')),
            SizedBox(height: 20,),
            ListTile(
              leading: Image.asset('assets/images/person.png',
              height: 44,width: 44,),
              title: Text("Zakaria Rabby",
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20),),
            ),
            SizedBox(height: 10,),
            ListTile(
              onTap: (){},
              leading: SvgPicture.asset('assets/icons/Info Circle.svg'),
              title: Text("Account Information"),
            ),
            ListTile(
              onTap: (){},
              leading: SvgPicture.asset('assets/icons/cart.svg',color: Colors.black,),
              title: Text("Order"),
            ),
            ListTile(
              onTap: (){},
              leading: SvgPicture.asset('assets/icons/Wallet.svg'),
              title: Text("My Cards"),
            ),
            ListTile(
              onTap: (){
                Get.toNamed('/settingsAll');
              },
              leading: SvgPicture.asset('assets/icons/Setting.svg',),
              title: Text("Settings"),
            ),
            SizedBox(height: 300,),
            ListTile(
              onTap: (){
                Get.bottomSheet(
                    Container(
                      height: 200,
                      color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 5,),
                      SvgPicture.asset('assets/icons/line.svg',height: 4,),
                      SizedBox(height: 10,),
                      Text('Logout',style: TextStyle(
                        color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold
                      ),),
                      Divider(),
                      Text('Are you sure you want to log out?',style: TextStyle(
                        fontSize: 22,color: Colors.grey[700]
                      ),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                          onPressed: () {
                            Get.toNamed('/loginScreen');
                          },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Color(0xFFE6D6F2),
                              side:  BorderSide(color: Color(0xFF8A2BE2)),
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                            ),
                            child: Text(
                              'Yes, Logout',
                              style: TextStyle(
                                color: Color(0xFF8A2BE2),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF8A2BE2),
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        ),
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),),
                          ],
                      ),
                    ],
                  ),
                ),
                ));
              },
              leading: SvgPicture.asset('assets/icons/Logout.svg'),
              title: Text("Logout",style: TextStyle(
                color: Colors.red,fontSize: 25
              ),),
            ),
          ],
        ),
      ],
    ),
  );
}