import 'package:app/Controller/homeController.dart';
import 'package:app/Model/model.dart';
import 'package:app/size_config.dart';
import 'package:app/view/DetailsOfTask.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TaskContainers extends StatelessWidget {
  TaskContainers({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Expanded(
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: homeController.model.length,
            itemBuilder: (context, index) {
              Model item = homeController.model[index];
              return Padding(
                padding: EdgeInsets.only(
                    top: 3 * SizeConfig.widthMultiplier,
                    left: 4 * SizeConfig.widthMultiplier,
                    right: 18 * SizeConfig.widthMultiplier),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 8,
                  child: InkWell(
                      onTap: () {
                        Get.to(DetailsTask(
                          item: item,
                          index: index,
                        ));
                      },
                      child: Container(
                          height: 9 * SizeConfig.heightMultiplier,
                          width: 55 * SizeConfig.widthMultiplier,
                          decoration: BoxDecoration(
                              color: homeController.color[index].color!,
                              borderRadius: BorderRadius.circular(12)),
                          child: ListTile(
                            leading: Container(
                              height: 7 * SizeConfig.heightMultiplier,
                              width: 14 * SizeConfig.widthMultiplier,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 226, 226, 226),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child:
                                  Image.asset(homeController.model[index].img!),
                            ),
                            title: Text(
                              homeController.model[index].Title!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 2.2 * SizeConfig.heightMultiplier),
                            ),
                            subtitle: Padding(
                              padding: EdgeInsets.only(
                                  top: 0.5 * SizeConfig.heightMultiplier),
                              child: Row(
                                children: [
                                  Text(
                                    homeController.model[index].Date!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize:
                                            1.9 * SizeConfig.heightMultiplier,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            trailing: CircularPercentIndicator(
                              animation: true,
                              animationDuration: 1000,
                              radius: 3.2 * SizeConfig.heightMultiplier,
                              lineWidth: 1.2 * SizeConfig.widthMultiplier,
                              percent:
                                  homeController.model[index].percentNumbers ==
                                          30
                                      ? 0.3
                                      : homeController.model[index]
                                                  .percentNumbers ==
                                              50
                                          ? 0.5
                                          : homeController.model[index]
                                                      .percentNumbers ==
                                                  70
                                              ? 0.7
                                              : homeController.model[index]
                                                          .percentNumbers ==
                                                      100
                                                  ? 1
                                                  : 0,
                              progressColor:
                                  homeController.model[index].percentColors,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Obx(
                                () => homeController
                                            .model[index].percentNumbers ==
                                        null
                                    ? Text(
                                        '0%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 2 *
                                                SizeConfig.heightMultiplier),
                                      )
                                    : Text(
                                        "${homeController.model[index].percentNumbers.toString()}%",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 1.8 *
                                                SizeConfig.heightMultiplier),
                                      ),
                              ),
                            ),
                          ))),
                ),
              );
            }),
      ),
    );
  }
}
