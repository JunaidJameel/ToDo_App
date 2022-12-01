import 'package:app/Controller/homeController.dart';
import 'package:app/view/calenderContainer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

import '../size_config.dart';

class Time extends StatefulWidget {
  Time({Key? key}) : super(key: key);
  final HomeController homeController = Get.find();
  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8 * SizeConfig.heightMultiplier,
      width: 40 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 237, 237, 237),
          borderRadius: BorderRadius.circular(12)),
      child: TextFormField(
        controller: homeController.TimeController,
        keyboardType: TextInputType.none,
        decoration: InputDecoration(
            hintText: 'hh:mm:aa',
            prefixIcon: Icon(Icons.lock_clock_outlined),
            border: OutlineInputBorder(borderSide: BorderSide.none)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter Time';
          }
          return null;
        },
        onTap: () async {
          DateTime? dateTime = await showOmniDateTimePicker(
            context: context,
            type: OmniDateTimePickerType.dateAndTime,
            primaryColor: Color.fromARGB(255, 234, 234, 234),
            backgroundColor: Color.fromARGB(255, 234, 234, 234),
            calendarTextColor: Color.fromARGB(255, 234, 234, 234),
            tabTextColor: Color.fromARGB(255, 234, 234, 234),
            unselectedTabBackgroundColor: Colors.white,
            buttonTextColor: Colors.red,
            timeSpinnerTextStyle: const TextStyle(
                color: Color.fromARGB(255, 177, 177, 177),
                fontSize: 25,
                fontWeight: FontWeight.w600),
            timeSpinnerHighlightedTextStyle: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
                fontWeight: FontWeight.bold),
            is24HourMode: false,
            isShowSeconds: false,
            startInitialDate: DateTime.now(),
            startFirstDate: DateTime(1600).subtract(const Duration(days: 3652)),
            startLastDate: DateTime.now().add(
              const Duration(days: 3652),
            ),
            borderRadius: const Radius.circular(16),
          );
          if (dateTime != null) {
            setState(() {
              homeController.TimeController.text =
                  DateFormat('hh:mm a').format(dateTime);
            });
          }
        },
      ),
    );
  }
}
