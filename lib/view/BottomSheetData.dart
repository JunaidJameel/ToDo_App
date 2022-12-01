import 'dart:ui';

import 'package:app/Controller/homeController.dart';
import 'package:app/Model/model.dart';
import 'package:app/custom/MaterialBtn.dart';
import 'package:app/size_config.dart';
import 'package:app/view/Home.dart';
import 'package:app/view/calenderContainer.dart';
import 'package:app/view/timeContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BottomSheetContainer extends StatelessWidget {
  BottomSheetContainer({
    Key? key,
  }) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: 82 * SizeConfig.heightMultiplier,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 4 * SizeConfig.heightMultiplier,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New Task ToDo',
                      style: TextStyle(
                          fontSize: 3 * SizeConfig.heightMultiplier,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      4 * SizeConfig.widthMultiplier,
                      1 * SizeConfig.heightMultiplier,
                      4 * SizeConfig.widthMultiplier,
                      2 * SizeConfig.heightMultiplier),
                  child: Divider(
                    color: Colors.black,
                    thickness: 0.08 * SizeConfig.heightMultiplier,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 4 * SizeConfig.widthMultiplier,
                    ),
                    Text(
                      'Title Task',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 2.5 * SizeConfig.heightMultiplier),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 4 * SizeConfig.widthMultiplier,
                      vertical: 2 * SizeConfig.heightMultiplier),
                  child: TextFormField(
                    controller: homeController.Titlecontroller,
                    maxLength: 15,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Add Task Name',
                      hintStyle: TextStyle(fontWeight: FontWeight.w600),
                      filled: true,
                      fillColor: Color.fromARGB(255, 237, 237, 237),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.transparent)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.transparent)),
                      // focusedBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(12),
                      //     borderSide: BorderSide(color: Colors.transparent)),
                      // enabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(12),
                      //     borderSide: BorderSide(color: Colors.transparent))
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 4 * SizeConfig.widthMultiplier,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 2.5 * SizeConfig.heightMultiplier,
                          color: Colors.black),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 1.5 * SizeConfig.heightMultiplier,
                      horizontal: 4 * SizeConfig.widthMultiplier),
                  child: Container(
                    height: 10 * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(12)),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: homeController.descriptionController,
                      decoration: InputDecoration(
                          hintText: 'Add Descriptions...',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          // focusedBorder: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(12),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                      // enabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(12),
                      //     borderSide:
                      //         BorderSide(color: Colors.transparent))),
                      maxLines: 3,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 4 * SizeConfig.widthMultiplier,
                    ),
                    Text(
                      'Icons',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 2.5 * SizeConfig.heightMultiplier,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                Container(
                  height: 8 * SizeConfig.heightMultiplier,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        Model item = homeController.imagesData[index];
                        return Padding(
                          padding: EdgeInsets.only(
                              left: 4 * SizeConfig.widthMultiplier),
                          child: InkWell(
                            onTap: () {
                              homeController.indexx.value = index;
                            },
                            child: Obx(
                              () => Container(
                                height: 8 * SizeConfig.heightMultiplier,
                                width: 18 * SizeConfig.widthMultiplier,
                                decoration: BoxDecoration(
                                    color: homeController.indexx.value == index
                                        ? Colors.amber
                                        : Color.fromARGB(255, 226, 226, 226),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      homeController.imagesData[index].img!,
                                      height: 7 * SizeConfig.heightMultiplier,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 4 * SizeConfig.widthMultiplier,
                    ),
                    Text(
                      'Date',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 2.5 * SizeConfig.heightMultiplier,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 42 * SizeConfig.widthMultiplier,
                    ),
                    Text(
                      'Time',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 2.5 * SizeConfig.heightMultiplier,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 4 * SizeConfig.widthMultiplier,
                    ),
                    CalendarContainer(),
                    SizedBox(
                      width: 11 * SizeConfig.widthMultiplier,
                    ),
                    Time(),
                  ],
                ),
                SizedBox(
                  height: 2 * SizeConfig.heightMultiplier,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 4 * SizeConfig.widthMultiplier,
                    ),
                    MaterialBtn(
                        Color: Colors.red,
                        ontap: () {
                          Get.back();
                          homeController.Titlecontroller.clear();
                          homeController.descriptionController.clear();
                          homeController.DateController.clear();
                          homeController.TimeController.clear();
                        },
                        Title: 'Cancel',
                        Fontsize: 0.7 * SizeConfig.heightMultiplier,
                        txtColor: Colors.white,
                        left: 8,
                        top: 1.4,
                        right: 7,
                        bottom: 1.4,
                        btnRoundness: 8,
                        btnleft: 0,
                        btntop: 0,
                        btnright: 0,
                        btnbottom: 0,
                        spacing: 0),
                    SizedBox(
                      width: 13 * SizeConfig.widthMultiplier,
                    ),
                    MaterialBtn(
                        Color: Colors.teal,
                        ontap: () {
                          if (formkey.currentState!.validate()) {
                            homeController.model.add(
                              Model(
                                Title: homeController.Titlecontroller.text,
                                Description:
                                    homeController.descriptionController.text,
                                Date: homeController.DateController.text,
                                Time: homeController.TimeController.text,
                                img: homeController
                                    .imagesData[homeController.indexx.value]
                                    .img,
                              ),
                            );

                            Get.back();
                            homeController.Titlecontroller.clear();
                            homeController.descriptionController.clear();
                            homeController.DateController.clear();
                            homeController.TimeController.clear();
                          }
                        },
                        Title: 'Create',
                        Fontsize: 0.7 * SizeConfig.heightMultiplier,
                        txtColor: Colors.white,
                        left: 8,
                        top: 1.4,
                        right: 8,
                        bottom: 1.4,
                        btnRoundness: 8,
                        btnleft: 0,
                        btntop: 0.5,
                        btnright: 0,
                        btnbottom: 0,
                        spacing: 0),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
