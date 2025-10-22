import 'package:flutter/material.dart';

import '../../utils/colors.dart';



class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.title,
    this.onTap,
    this.subTitle, this.titleStyle, this.subTitleStyle,

  });
  final String title;
  final String? subTitle;
  final Function()? onTap;
  final TextStyle? titleStyle;
  final TextStyle? subTitleStyle;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text(
        title,
        style: titleStyle??TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
      trailing: InkWell(
        onTap: onTap,
        child: Text(
          subTitle??"",
          style: TextStyle(
            color: CustomColors.greyColor,
            fontSize: 15,
          ),
        ),
      ),

    );
  }
}