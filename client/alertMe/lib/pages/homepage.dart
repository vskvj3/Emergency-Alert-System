import 'package:flutter/material.dart';
import '../widgets/hamburgerMenu.dart';
import '../widgets/bottomAppBar.dart';
import '../widgets/alertButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //navbar

        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(170, 219, 253, 1),
          title: const Text('AlertMe',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          actions: [
            hamburgerMenu(context),
          ],
        ),

        // body of home page

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(),
              alignment: Alignment.center,
              child: alertButton(),
            ),
          ],
        ),
        bottomNavigationBar: bottomAppBar(context),
      ),
    );
  }
}
