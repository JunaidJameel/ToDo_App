import 'package:flutter/material.dart';

import '../size_config.dart';

class Txtfield extends StatelessWidget {
  Txtfield(
      {@required this.IconData,
      required this.IconData2,
      required this.hintTxt,
      required this.hori,
      required this.verti,
      required this.visibility,
      this.keybordType});

  final IconData;
  final IconData2;
  final hintTxt;

  final double hori;
  final double verti;
  final bool visibility;
  final keybordType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: hori * SizeConfig.widthMultiplier,
          vertical: verti * SizeConfig.heightMultiplier),
      child: TextField(
        keyboardType: keybordType,
        obscureText: visibility,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: IconData,
          suffixIcon: IconData2,
          hintText: '$hintTxt',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
