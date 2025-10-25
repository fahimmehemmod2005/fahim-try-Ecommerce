import 'package:fahim_try_ecommerce/controllers/cart_controller.dart';
import 'package:fahim_try_ecommerce/view/base/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  CartController _cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
        leading: SizedBox(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffDEDEDE),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          _cartController
                              .myCartList
                              .value[index]['product_image'],
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _cartController
                                  .myCartList
                                  .value[index]['product_name'],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "\$${_cartController.myCartList[index]['product_price']} (-\$${_cartController.myCartList[index]['product_tax']} Tax)",
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xff8F959E),
                              ),
                            ),
                            SizedBox(height: 10),

                            Row(
                              children: [
                                if (_cartController
                                        .myCartList[index]['stock'] !=
                                    0)
                                  GestureDetector(
                                    onTap: () {
                                      _cartController.decrement(index);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,

                                        border: Border.all(
                                          color: Color(0xff8F959E),
                                        ),
                                      ),
                                      child: Icon(Icons.keyboard_arrow_down),
                                    ),
                                  ),
                                SizedBox(width: 10),
                                _cartController.myCartList[index]['stock'] != 0
                                    ? Text(
                                        _cartController
                                            .myCartList
                                            .value[index]['quantity']
                                            .toString(),
                                      )
                                    : Text(
                                        "Out of Stock",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                SizedBox(width: 10),
                                if (_cartController
                                        .myCartList[index]['stock'] !=
                                    0)
                                  GestureDetector(
                                    onTap: () {
                                      _cartController.increment(index);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,

                                        border: Border.all(
                                          color: Color(0xff8F959E),
                                        ),
                                      ),
                                      child: Icon(Icons.keyboard_arrow_up),
                                    ),
                                  ),

                                SizedBox(width: 10),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    _cartController.delete(index);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,

                                      border: Border.all(
                                        color: Color(0xff8F959E),
                                      ),
                                    ),
                                    child: Icon(Icons.delete_outline),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: _cartController.myCartList.length,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Address',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/addressScreen');
                  },
                  child: SvgPicture.asset('assets/icons/Arrow - Right 2.svg'),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/icons/Rectangle 584.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chhatak, Sunamgonj 12/8AB',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Sylhet',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset('assets/icons/Check.svg'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset('assets/icons/Arrow - Right 2.svg'),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Image.asset('assets/icons/Rectangle 584.png'),
                SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Visa Classic',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Sylhet',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                SvgPicture.asset('assets/icons/Check.svg'),
              ],
            ),
            SizedBox(height: 15),

            Text(
              'Order info',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\$110',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping cost',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\$10',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\$120',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 15),
            CustomButton(title: 'Checkout', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
