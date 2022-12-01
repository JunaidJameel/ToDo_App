import 'package:app/Controller/homeController.dart';
import 'package:app/Model/model.dart';
import 'package:app/size_config.dart';
import 'package:app/view/TaskContainer.dart';
import 'package:app/view/addTask.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'BottomSheetData.dart';

class Home extends StatelessWidget {
  Home({
    Key? key,
  }) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 2 * SizeConfig.heightMultiplier,
                  left: 4 * SizeConfig.widthMultiplier),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 3 * SizeConfig.widthMultiplier),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 3 * SizeConfig.heightMultiplier),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Welcome ',
                            style: TextStyle(
                                color: Color(0xffa99fa4),
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: '\nAndy Miller',
                            style: TextStyle(
                              color: Color(
                                0xff341c29,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5 * SizeConfig.heightMultiplier,
            ),
            Container(
              height: 20 * SizeConfig.heightMultiplier,
              width: 92 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffa5467d), Color(0xff6b5fa5)]),
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(18)),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 4 * SizeConfig.widthMultiplier,
                            top: 3 * SizeConfig.heightMultiplier,
                            bottom: 4 * SizeConfig.heightMultiplier),
                        child: Text("Today's Tasks",
                            style: TextStyle(
                              fontSize: 3.1 * SizeConfig.heightMultiplier,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 2 * SizeConfig.widthMultiplier),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Color(0xff6d2685),
                          onPressed: () {
                            //     print(homeController.model.length);
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.all(1 * SizeConfig.heightMultiplier),
                            child: Text(
                              'View Task',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 2.8 * SizeConfig.heightMultiplier),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Padding(
                  //       padding: EdgeInsets.only(
                  //           left: 20 * SizeConfig.widthMultiplier),
                  //       child: CircularPercentIndicator(
                  //         animation: true,
                  //         animationDuration: 1000,
                  //         radius: 8 * SizeConfig.heightMultiplier,
                  //         lineWidth: 1.8 * SizeConfig.widthMultiplier,
                  //         percent: 1,
                  //         //  homeController.model[index].percentNumbers ==
                  //         //         30
                  //         //     ? 0.3
                  //         //     : homeController.model[index].percentNumbers == 50
                  //         //         ? 0.5
                  //         //         : homeController.model[index].percentNumbers ==
                  //         //                 70
                  //         //             ? 0.7
                  //         //             : homeController
                  //         //                         .model[index].percentNumbers ==
                  //         //                     100
                  //         //                 ? 1
                  //         //                 : 0,
                  //         progressColor: Colors.amber,
                  //         circularStrokeCap: CircularStrokeCap.round,
                  //         center: Text(
                  //           '100%',
                  //           style: TextStyle(
                  //               fontSize: 4 * SizeConfig.heightMultiplier,
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.w700),
                  //         ),
                  //         // center: Obx(
                  //         //   () =>
                  //         //       homeController.model[index].percentNumbers == null
                  //         //           ? Text(
                  //         //               '0%',
                  //         //               style: TextStyle(
                  //         //                   fontWeight: FontWeight.w900,
                  //         //                   fontSize:
                  //         //                       2 * SizeConfig.heightMultiplier),
                  //         //             )
                  //         //           : Text(
                  //         //               "${homeController.model[index].percentNumbers.toString()}%",
                  //         //               style: TextStyle(
                  //         //                   fontWeight: FontWeight.w900,
                  //         //                   fontSize: 1.8 *
                  //         //                       SizeConfig.heightMultiplier),
                  //         //             ),
                  //         // ),
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 4 * SizeConfig.widthMultiplier,
                      top: 2.5 * SizeConfig.heightMultiplier),
                  child: Text(
                    'In Progress',
                    style: TextStyle(
                      fontSize: 2.9 * SizeConfig.heightMultiplier,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1 * SizeConfig.heightMultiplier,
            ),
            Obx(
              () => homeController.model.isEmpty
                  ? Container(
                      height: 18 * SizeConfig.heightMultiplier,
                      width: 92 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          "You don't have any Task yet!",
                          style: TextStyle(
                              fontSize: 2.5 * SizeConfig.heightMultiplier,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    )
                  : TaskContainers(homeController: homeController),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        highlightElevation: 15,
        backgroundColor: Colors.red,
        onPressed: () {
          Get.bottomSheet(BottomSheetContainer(), isScrollControlled: true);
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
