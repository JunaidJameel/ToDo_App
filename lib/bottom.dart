import 'package:app/size_config.dart';
import 'package:app/view/Home.dart';
import 'package:app/view/Notification.dart';
import 'package:app/view/addTask.dart';
import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({
    Key? key,
  }) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int index = 0;
  final screens = [
    Home(),
    Notifications(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.pink.shade100,
            labelTextStyle: MaterialStateProperty.all(TextStyle(
                fontSize: 4 * SizeConfig.widthMultiplier,
                fontWeight: FontWeight.w600))),
        child: NavigationBar(
            selectedIndex: index,
            onDestinationSelected: (index) {
              setState(() {
                this.index = index;
              });
            },
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                selectedIcon: Icon(Icons.home),
              ),
              NavigationDestination(
                  icon: Icon(Icons.notifications_outlined),
                  label: 'Bells',
                  selectedIcon: Icon(Icons.notifications)),
            ]),
      ),
    );
  }
}
