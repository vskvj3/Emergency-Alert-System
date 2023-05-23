import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/alertViewButton.dart';
import '../pages/alertsNearPage.dart';
import '../pages/homepage.dart';

BottomAppBar bottomAppBar(BuildContext context) {
  return BottomAppBar(
    child: Container(
      height: 75,
      color: const Color(0xFFAADBFD),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          alertViewButton('Alert', () {
            // what happens when the alert button is clicked
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
              (route) => false, // Prevent navigating back
            );
          }, Colors.red, FontWeight.w400),
          VerticalDivider(),
          alertViewButton('View', () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => AlertsNear(),
              ),
              (route) => false, // Prevent navigating back
            );
            print('Alert View Page');
          }, Colors.black, FontWeight.w400),
        ],
      ),
    ),
  );
}
