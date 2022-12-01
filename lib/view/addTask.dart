import 'package:app/size_config.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 3 * SizeConfig.heightMultiplier,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Make Your Plan's",
                style: TextStyle(
                    fontSize: 3 * SizeConfig.heightMultiplier,
                    fontWeight: FontWeight.w700),
              ),
            ],
          )
        ],
      )),
    );
  }
}
