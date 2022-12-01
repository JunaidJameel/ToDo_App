import 'package:flutter/material.dart';

import '../size_config.dart';

class MaterialBtn extends StatelessWidget {
  const MaterialBtn(
      {Key? key,
      required this.Color,
      required this.ontap,
      required this.Title,
      required this.Fontsize,
      this.FontWeight,
      required this.txtColor,
      required this.left,
      required this.top,
      required this.right,
      required this.bottom,
      required this.btnRoundness,
      required this.btnleft,
      required this.btntop,
      required this.btnright,
      required this.btnbottom,
      required this.spacing})
      : super(key: key);
  final Color;
  final Title;

  final Fontsize;
  final FontWeight;
  final txtColor;
  final double left;
  final double top;
  final double right;
  final double bottom;
  final double btnRoundness;
  final double btnleft;
  final double btntop;
  final double btnright;
  final double btnbottom;
  final double spacing;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          btnleft * SizeConfig.widthMultiplier,
          btntop * SizeConfig.heightMultiplier,
          btnright * SizeConfig.widthMultiplier,
          btnbottom * SizeConfig.heightMultiplier),
      child: MaterialButton(
        color: Color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(btnRoundness)),
        onPressed: ontap,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              left * SizeConfig.widthMultiplier,
              top * SizeConfig.heightMultiplier,
              right * SizeConfig.widthMultiplier,
              bottom * SizeConfig.heightMultiplier),
          child: Text(
            '$Title',
            style: TextStyle(
                fontSize: Fontsize * SizeConfig.widthMultiplier,
                fontWeight: FontWeight,
                color: txtColor,
                letterSpacing: spacing),
          ),
        ),
      ),
    );
  }
}
