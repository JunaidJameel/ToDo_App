import 'dart:ui';

import 'package:flutter/material.dart';

import '../size_config.dart';

class Textt {
  static Widget txt(String title, double size, FontWeight fontWeight, Color,
      double left, double top, double right, double bottom) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          left * SizeConfig.widthMultiplier,
          top * SizeConfig.heightMultiplier,
          right * SizeConfig.widthMultiplier,
          bottom * SizeConfig.heightMultiplier),
      child: Text(
        '$title',
        style: TextStyle(
            fontSize: size * SizeConfig.widthMultiplier,
            fontWeight: fontWeight,
            color: Color),
      ),
    );
  }
}

class Btn {
  static Widget Buttn(IconData iconData, Function() ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 4.3 * SizeConfig.heightMultiplier,
        width: 8 * SizeConfig.widthMultiplier,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 2.2)),
        child: Center(
          child: Icon(
            (iconData),
            size: 7 * SizeConfig.widthMultiplier,
          ),
        ),
      ),
    );
  }
}

// customcontainer

class BtnContainer {
  static Widget backBtn(Function() ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          height: 4.5 * SizeConfig.heightMultiplier,
          width: 8.5 * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          )),
    );
  }
}
