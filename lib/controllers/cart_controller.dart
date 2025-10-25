import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<Map<String, dynamic>> myCartList = <Map<String, dynamic>>[
    {
      "stock": 1,
      "product_name": "Men Navy Blue Solid Sweatshirt 1",
      "product_price": "2599",
      "product_image": "assets/images/product_image1.png",
      "tax": "23",
      "quantity": 1,
    },
    {
      "stock": 10,
      "product_name": "Men Navy Blue Solid Sweatshirt 2",
      "product_price": "2599",
      "product_image": "assets/images/product_image1.png",
      "tax": "52",
      "quantity": 3,
    },
    {
      "stock": 0,
      "product_name": "Men Navy Blue Solid Sweatshirt 3",
      "product_price": "2599",
      "product_image": "assets/images/product_image1.png",
      "tax": "4",
      "quantity": 2,
    },
    {
      "stock": 3,
      "product_name": "Men Navy Blue Solid Sweatshirt 4",
      "product_price": "2599",
      "product_image": "assets/images/product_image1.png",
      "tax": "41",
      "quantity": 1,
    },
  ].obs;

  increment(int index) {
    if (myCartList[index]['quantity'] < myCartList[index]['stock']) {
      myCartList[index]['quantity']++;
      myCartList.refresh();
    }
  }

  decrement(int index) {
    if (myCartList[index]['quantity'] > 1) {
      myCartList[index]['quantity']--;
      myCartList.refresh();
    }
  }

  delete(int index) {
    Get.defaultDialog(
      title: "Delete",
      middleText: "Are you sure you want to delete this item?",
      actions: [
        TextButton(
          onPressed: () {
            myCartList.remove(index);
            Get.back();
          },
          child: Text("Yes"),
        ),
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text("No"),
        ),
      ],
    );
  }
}
