import 'package:app/size_config.dart';
import 'package:app/view/calenderContainer.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 2 * SizeConfig.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Notifications',
                  style: TextStyle(
                      fontSize: 3.5 * SizeConfig.heightMultiplier,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Container(
            //     height: 7 * SizeConfig.heightMultiplier,
            //     child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: homeController.model.length,
            //         itemBuilder: (context, index) {
            //           return ListTile(
            //             leading: Container(
            //               height: 7 * SizeConfig.heightMultiplier,
            //               width: 14 * SizeConfig.widthMultiplier,
            //               decoration: BoxDecoration(
            //                 color: Color.fromARGB(255, 226, 226, 226),
            //                 borderRadius: BorderRadius.circular(12),
            //               ),
            //               child: Image.asset(homeController.model[index].img!),
            //             ),
            //           );
            //         }))
          ],
        ),
      ),
    );
  }
}
