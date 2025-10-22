import 'package:fahim_try_ecommerce/view/pages/mainScreen/main_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/colors.dart';
import '../../base/custom_title.dart';
import 'components/choose_brands.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Welcome to Laza.",
                    style: TextStyle(
                      fontSize: 15,
                      color: CustomColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffF5F6FA),
                            filled: true,
                            contentPadding: EdgeInsets.all(15),
                            prefixIconConstraints: BoxConstraints(
                              maxHeight: 20,
                              maxWidth: 40,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/search.svg",
                              ),
                            ),
                            hintText: "Search",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CustomColors.primaryColor,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/Voice.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ChooseBrands(),
            SizedBox(height: 20),
            CustomTitle(title: "New Arrivals",subTitle: "View All",),
            SizedBox(height: 20),
            MasonryGridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                              height: 200,
                              width: double.infinity,
                              image: AssetImage(
                                "assets/images/product_image1.png",
                              ),
                              fit: BoxFit.cover
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: SvgPicture.asset("assets/icons/fev.svg"),
                        ),
                      ],
                    ),
                    Text("Product Name",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,),maxLines: 2,overflow: TextOverflow.ellipsis,),
                    SizedBox(height: 5),
                    Text("\$120",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,),),

                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  _appBar() {
    return AppBar(
      leading: InkWell(
        onTap: (){
          scaffoldKey.currentState!.openDrawer();
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: CircleAvatar(
            backgroundColor: Color(0xffF5F6FA),
            child: SvgPicture.asset("assets/icons/menu.svg"),
          ),
        ),
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CircleAvatar(
            backgroundColor: Color(0xffF5F6FA),
            child: SvgPicture.asset("assets/icons/cart.svg"),
          ),
        ),
      ],
    );
  }
}
