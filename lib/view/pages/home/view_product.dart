import 'package:fahim_try_ecommerce/view/base/custom_button.dart';
import 'package:fahim_try_ecommerce/view/base/custom_title.dart';
import 'package:fahim_try_ecommerce/view/pages/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ViewProduct extends StatefulWidget {
  const ViewProduct({super.key});

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {

  final List<String> sizes = ['S', 'M', 'L', 'XL', '2XL'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Stack(
                children: [
                  Align(
                    child: SvgPicture.asset('assets/icons/nike.svg',height: 100,),
                  ),
                  Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/images/product_image1.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                  ),
                  IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back)),
                  Align(
                    alignment: AlignmentGeometry.topRight,
                    child: IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                        ),
                        onPressed: () {
                          Get.to(CartScreen());
                        },
                        icon: SvgPicture.asset(
                            'assets/icons/cart.svg')),
                  ),
                ],
              ),SizedBox(height: 10,),
            Row(
              children: [
                Text("Men's Printed Pullover Hoodie",
                style: TextStyle(color: Colors.grey),),
                Spacer(),
                Text('Price',style: TextStyle(color: Colors.grey)),
              ],
            ),
            Row(
              children: [
                Text("Nike Club Fleece",
                  style: TextStyle(fontSize: 24),),
                Spacer(),
                Text('\$120',style: TextStyle(fontSize: 22)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Select Size',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                TextButton(onPressed: () {}, child: Text('Size Guide')),
              ],
            ),
            Wrap(
              spacing: 10,
              children: sizes.map((size) {
                return ChoiceChip(
                  label: Text(size),
                  selected: false,
                  onSelected: (selected) {},
                );
              }).toList(),
            ),
          
            SizedBox(height: 24),
            Text('Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(height: 8),
            Text(
              'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with...',
              style: TextStyle(fontSize: 16),
            ),
          
            SizedBox(height: 24),
                Text('Review', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(height: 8),
            ListTile(
              leading: CircleAvatar(child: Image.asset('assets/images/Rectangle 568.png')),
              title: Text('Ronald Richards'),
              subtitle: Text('Rated: 4.8 ★ on 13 Sep, 2020'),
              trailing: Icon(Icons.star, color: Colors.amber),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
              style: TextStyle(fontSize: 16),
            ),
          
            SizedBox(height: 10),
                CustomButton(title: 'Add to Cart', onPressed: (){})
              ],
            ),
          ],
          ),
        ),



    );
  }
}
