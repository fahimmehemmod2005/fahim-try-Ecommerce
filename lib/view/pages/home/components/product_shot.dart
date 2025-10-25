import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../cart/cart_screen.dart';

class ProductShot extends StatefulWidget {
  const ProductShot({super.key});

  @override
  State<ProductShot> createState() => _ProductShotState();
}

class _ProductShotState extends State<ProductShot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/icons/nike.svg', height: 40),
        centerTitle: true,
        leading: IconButton(
          style: IconButton.styleFrom(backgroundColor: Colors.grey[200]),
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.grey[200]),
            onPressed: () {
              Get.to(CartScreen());
            },
            icon: SvgPicture.asset('assets/icons/cart.svg'),
          ),
          SizedBox(width: 7),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Text('365 Items', style: TextStyle(fontSize: 20)),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/icons/short.svg'),
                  ),
                ],
              ),
              Text(
                'in wishlist',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              SizedBox(height: 10),
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
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: SvgPicture.asset("assets/icons/fev.svg"),
                          ),
                        ],
                      ),
                      Text(
                        "Product Name",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "\$120",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
