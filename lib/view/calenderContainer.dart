import 'package:app/Controller/homeController.dart';
import 'package:app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalendarContainer extends StatefulWidget {
  const CalendarContainer({Key? key}) : super(key: key);

  @override
  State<CalendarContainer> createState() => _CalendarContainerState();
}

final HomeController homeController = Get.find();

class _CalendarContainerState extends State<CalendarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 8 * SizeConfig.heightMultiplier,
        width: 41 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 237, 237, 237),
            borderRadius: BorderRadius.circular(12)),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter Date';
            }
            return null;
          },
          controller: homeController.DateController,
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
              hintText: 'dd/mm/yy',
              hintStyle: TextStyle(fontWeight: FontWeight.w400),
              prefixIcon: Icon(Icons.calendar_month),
              border: OutlineInputBorder(borderSide: BorderSide.none)),
          onTap: () async {
            DateTime? pickdate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101));
            if (pickdate != null) {
              setState(
                () {
                  homeController.DateController.text =
                      DateFormat('dd-MM-yyyy').format(pickdate);
                },
              );
            }
          },
        ));
  }
}
