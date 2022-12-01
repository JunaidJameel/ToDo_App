import 'package:app/Controller/homeController.dart';
import 'package:app/custom/MaterialBtn.dart';
import 'package:app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../Model/model.dart';

class DetailsTask extends StatefulWidget {
  final Model item;
  final int? index;
  DetailsTask({Key? key, required this.item, this.index}) : super(key: key);

  @override
  State<DetailsTask> createState() => _DetailsTaskState();
}

class _DetailsTaskState extends State<DetailsTask> {
  final HomeController homeController = Get.find();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.descriptionController.text = widget.item.Description!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 224, 224),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Stack(children: [
          Container(
            height: 18 * SizeConfig.heightMultiplier,
            color: Color.fromARGB(255, 53, 126, 90),
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: 7 * SizeConfig.heightMultiplier,
                  left: 3 * SizeConfig.widthMultiplier),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15 * SizeConfig.widthMultiplier,
                  ),
                  Text(
                    'Details of Task',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 3 * SizeConfig.heightMultiplier),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 11.5 * SizeConfig.heightMultiplier),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 4 * SizeConfig.widthMultiplier),
              child: Container(
                height: 90 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 242, 242),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 3.8 * SizeConfig.widthMultiplier,
                        ),
                        Text(
                          'Title:',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 3 * SizeConfig.heightMultiplier),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      height: 6 * SizeConfig.heightMultiplier,
                      width: 100 * SizeConfig.widthMultiplier,
                      color: Color.fromARGB(255, 201, 201, 201),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 4 * SizeConfig.widthMultiplier,
                        ),
                        child: Row(
                          children: [
                            Text(
                              widget.item.Title!,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 3 * SizeConfig.heightMultiplier,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Container(
                              height: 4.5 * SizeConfig.heightMultiplier,
                              width: 25 * SizeConfig.widthMultiplier,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 45, 146, 95),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  widget.item.Time!,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize:
                                          2.2 * SizeConfig.heightMultiplier),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4 * SizeConfig.widthMultiplier,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 4 * SizeConfig.widthMultiplier,
                          top: 2 * SizeConfig.heightMultiplier,
                          bottom: 2 * SizeConfig.heightMultiplier),
                      child: Row(
                        children: [
                          Text(
                            'Discription',
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 136, 136),
                                fontSize: 2.5 * SizeConfig.heightMultiplier,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 4 * SizeConfig.widthMultiplier),
                      child: Container(
                        height: 18 * SizeConfig.heightMultiplier,
                        width: 100 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 237, 237, 237),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey, width: 0.8)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          controller: homeController.descriptionController,
                          maxLines: 4,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 0 * SizeConfig.widthMultiplier,
                          vertical: 4 * SizeConfig.heightMultiplier),
                      child: Container(
                        height: 7 * SizeConfig.heightMultiplier,
                        width: 100 * SizeConfig.widthMultiplier,
                        color: Color.fromARGB(255, 201, 201, 201),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 4 * SizeConfig.widthMultiplier,
                            ),
                            Text(
                              'Due Date',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 2.5 * SizeConfig.heightMultiplier),
                            ),
                            Spacer(),
                            Container(
                              height: 4.5 * SizeConfig.heightMultiplier,
                              width: 30 * SizeConfig.widthMultiplier,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 45, 146, 95),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  widget.item.Date!,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          2.2 * SizeConfig.heightMultiplier,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4 * SizeConfig.widthMultiplier,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'How much Work is Done ?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 3 * SizeConfig.heightMultiplier),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 4 * SizeConfig.widthMultiplier,
                          top: 4 * SizeConfig.heightMultiplier),
                      child: Container(
                          height: 7 * SizeConfig.heightMultiplier,
                          child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                Model cnt =
                                    homeController.PercentNummber[index];
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: 3 * SizeConfig.widthMultiplier),
                                  child: InkWell(
                                    onTap: () {
                                      homeController.containerBorder.value =
                                          index;
                                    },
                                    child: Obx(
                                      () => Container(
                                        height:
                                            5.5 * SizeConfig.heightMultiplier,
                                        width: 17 * SizeConfig.widthMultiplier,
                                        decoration: BoxDecoration(
                                            color: homeController
                                                .PercentNummber[index]
                                                .percentColors,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            border: Border.all(
                                                color: homeController
                                                            .containerBorder
                                                            .value ==
                                                        index
                                                    ? Colors.black
                                                    : Colors.transparent)),
                                        child: Center(
                                          child: Text(
                                            homeController.PercentNummber[index]
                                                .percentNumbers!
                                                .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 2.5 *
                                                    SizeConfig
                                                        .heightMultiplier),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              })),
                    ),
                    SizedBox(
                      height: 5 * SizeConfig.heightMultiplier,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      color: Colors.black,
                      onPressed: () {
                        homeController.model[widget.index!] = Model(
                          Date: widget.item.Date,
                          Description: widget.item.Description,
                          Time: widget.item.Time,
                          Title: widget.item.Title,
                          color: widget.item.color,
                          empetyListPercent: widget.item.empetyListPercent,
                          img: widget.item.img,
                          percent: widget.item.percent,
                          percentColors: homeController
                              .PercentNummber[
                                  homeController.containerBorder.value]
                              .percentColors,
                          percentNumbers: homeController
                              .PercentNummber[
                                  homeController.containerBorder.value]
                              .percentNumbers,
                        );
                        print(
                            "update list is ${homeController.model[widget.index!].percentNumbers}");

                        Get.back();
                        homeController.descriptionController.clear();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 8 * SizeConfig.widthMultiplier,
                            right: 8 * SizeConfig.widthMultiplier,
                            top: 1 * SizeConfig.heightMultiplier,
                            bottom: 1 * SizeConfig.heightMultiplier),
                        child: Text(
                          'Save',
                          style: TextStyle(
                              fontSize: 3 * SizeConfig.heightMultiplier,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ])),
      ),
    );
  }
}
