import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Model/model.dart';

class HomeController extends GetxController {
  RxList<Model> model = <Model>[].obs;
  RxList<Model> color = <Model>[].obs;
  RxList<Model> imagesData = <Model>[].obs;
  RxList<Model> PercentNummber = <Model>[].obs;
  //
  // Empety list for percent Indicator
  RxList<Model> empetyListPercent = <Model>[].obs;
  // TextEditing Controller

  TextEditingController Titlecontroller = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController DateController = TextEditingController();
  TextEditingController TimeController = TextEditingController();
//
  RxInt indexx = 0.obs;
  RxInt containerBorder = 0.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    builder();
    Img();
    Circle();
  }

  void builder() {
    var builderResult = [
      Model(
        color: Color(0xffb9e2f9),
      ),
      Model(
        color: Color(0xfff3edb0),
      ),

      Model(
        color: Color.fromARGB(255, 244, 202, 255),
      ),
      Model(
        color: Color.fromARGB(255, 202, 255, 190),
      ),
      //
      Model(
        color: Color(0xffb9e2f9),
      ),
      Model(
        color: Color(0xfff3edb0),
      ),

      Model(
        color: Color.fromARGB(255, 244, 202, 255),
      ),
      Model(
        color: Color.fromARGB(255, 202, 255, 190),
      ),
      Model(
        color: Color(0xffb9e2f9),
      ),
      Model(
        color: Color(0xfff3edb0),
      ),

      Model(
        color: Color.fromARGB(255, 244, 202, 255),
      ),
      Model(
        color: Color.fromARGB(255, 202, 255, 190),
      ),
      Model(
        color: Color(0xffb9e2f9),
      ),
      Model(
        color: Color(0xfff3edb0),
      ),

      Model(
        color: Color.fromARGB(255, 244, 202, 255),
      ),
      Model(
        color: Color.fromARGB(255, 202, 255, 190),
      ),
      Model(
        color: Color(0xffb9e2f9),
      ),
      Model(
        color: Color(0xfff3edb0),
      ),

      Model(
        color: Color.fromARGB(255, 244, 202, 255),
      ),
      Model(
        color: Color.fromARGB(255, 202, 255, 190),
      ),
      Model(
        color: Color(0xffb9e2f9),
      ),
      Model(
        color: Color(0xfff3edb0),
      ),

      Model(
        color: Color.fromARGB(255, 244, 202, 255),
      ),
      Model(
        color: Color.fromARGB(255, 202, 255, 190),
      ),
    ];
    color.value = builderResult;
  }

  void Img() {
    var ImgResult = [
      Model(img: 'images/img/1.png'),
      Model(img: 'images/img/2.png'),
      Model(img: 'images/img/3.png'),
      Model(img: 'images/img/4.png'),
      Model(img: 'images/img/5.png'),
      Model(img: 'images/img/6.png'),
      Model(img: 'images/img/7.png'),
      Model(img: 'images/img/8.png'),
      Model(img: 'images/img/9.png'),
      Model(img: 'images/img/10.png'),
    ];
    imagesData.value = ImgResult;
  }

  void Circle() {
    var PercentNum = [
      Model(
        percentNumbers: 30,
        percentColors: Color.fromARGB(255, 254, 129, 120),
      ),
      Model(
          percentNumbers: 50,
          percentColors: Color.fromARGB(255, 226, 110, 255)),
      Model(
          percentNumbers: 70, percentColors: Color.fromARGB(255, 43, 160, 255)),
      Model(
          percentNumbers: 100, percentColors: Color.fromARGB(255, 255, 191, 0)),
    ];
    PercentNummber.value = PercentNum;
  }
}
