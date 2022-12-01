import 'package:flutter/cupertino.dart';

class Model {
  final String? Title;
  final String? Description;
  final String? Date;
  final String? Time;
  final Color? color;
  final String? img;
  final int? percentNumbers;
  final Color? percentColors;
  final int? percent;
  final int? empetyListPercent;
  Model({
    this.Title,
    this.Description,
    this.Date,
    this.Time,
    this.color,
    this.img,
    this.percentNumbers,
    this.percentColors,
    this.percent,
    this.empetyListPercent,
  });
}
