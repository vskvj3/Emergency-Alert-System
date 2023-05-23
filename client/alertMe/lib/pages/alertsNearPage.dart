import 'package:emergency_alert_system/widgets/bottomAppBar.dart';

import '../widgets/AlertListField.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import '../widgets/alertViewButton.dart';

class AlertsNear extends StatelessWidget {
  Widget verticalDivider =
      const VerticalDivider(thickness: 1, color: Colors.grey);

  AlertsNear({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(170, 219, 253, 1),
        title: const Text('Alerts Recieved',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: Container(
          padding: const EdgeInsets.only(left: 2, top: 50, right: 2),
          child: ListView(
            children: const [
              //will appear only if an alert is recieved

              alertListField(
                  distance: '500m away', nearFar: 'Near', name: 'Jane Doe'),
              SizedBox(
                height: 20,
              ),
              alertListField(
                distance: '5.2Km away',
                name: 'Mathew alex',
                nearFar: 'Far',
              ),
            ],
          )),
      bottomNavigationBar: bottomAppBar(context),
    );
  }
}
