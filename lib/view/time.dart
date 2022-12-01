// import 'package:app/Controller/homeController.dart';
// import 'package:app/size_config.dart';
// import 'package:app/view/calenderContainer.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';

// class TimeCont extends StatefulWidget {
//   TimeCont({Key? key}) : super(key: key);
//   HomeController homeController = Get.put(HomeController());
//   @override
//   State<TimeCont> createState() => _TimeContState();
// }

// class _TimeContState extends State<TimeCont> {
//   //TimeOfDay? time = TimeOfDay(hour: 12, minute: 12);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: TextFormField(
//           controller: homeController.TimeController,
//           onTap: () async {
//             TimeOfDay? newTime = await showTimePicker(
//               context: context,
//               initialTime: TimeOfDay.now(),
//             );
//             if (newTime != null) {
//               setState(() {
//                 homeController.TimeController.text =
//                     DateFormat('hh:mm:a').format(newTime);
//                 //time = newTime;
//               });
//             }
//             // Text('${time!.hour.toString()}:${time!.minute.toString()}');
//           },
//           style: TextStyle(
//               fontWeight: FontWeight.w700,
//               fontSize: 2 * SizeConfig.heightMultiplier),
//         ),
//       ),
//     );
//   }
// }
