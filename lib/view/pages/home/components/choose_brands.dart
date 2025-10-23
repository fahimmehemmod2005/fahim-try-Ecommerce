import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../base/custom_title.dart';

class ChooseBrands extends StatelessWidget {
  ChooseBrands({super.key});
  List brands = [
    {
      "name": "Nike",
      "icon": "assets/icons/nike.svg",
    },
    {
      "name": "Adidas",
      "icon": "assets/icons/Adidas.svg",
    },
    {
      "name": "Fila",
      "icon": "assets/icons/fila.svg",
    },
    {
      "name": "Nike",
      "icon": "assets/icons/nike.svg",
    },
    {
      "name": "Adidas",
      "icon": "assets/icons/Adidas.svg",
    },
    {
      "name": "Fila",
      "icon": "assets/icons/fila.svg",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitle(title: 'Choose Brands',
          subTitle: "View All",
          onTap:(){},),
        SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                width: 115,
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF5F6FA),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFEFEFE),
                      ),
                      child: SvgPicture.asset(
                        brands[index]["icon"],
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      brands[index]["name"],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 10);
            },
            itemCount: brands.length,
          ),
        ),
      ],
    );
  }
}