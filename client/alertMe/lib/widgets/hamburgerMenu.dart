import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../pages/AboutPage.dart';
import '../pages/FAQpage.dart';
import '../pages/EmergencyContactsPage.dart';
import '../pages/SettingsPage.dart';
import '../pages/EmergencyProfilePage.dart';

PopupMenuButton<String> hamburgerMenu(BuildContext context) {
  return PopupMenuButton<String>(
    color: const Color.fromRGBO(170, 219, 253, 1),
    onSelected: (String choice) {
      // Handle menu item selection

      if (choice == 'Settings') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SettingsPage(),
          ),
        );
        print('Settings Page');
      } else if (choice == 'Emergency Profile') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EmergencyProfilePage(),
          ),
        );
        print('Emergency Profile Page');
      } else if (choice == 'Emergency Contacts') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EmergencyContactsPage(),
          ),
        );
        print('Emergency Contacts Page');
      } else if (choice == 'FAQ') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FAQPage(),
          ),
        );
        print('FAQ Page');
      } else if (choice == 'About') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AboutPage(),
          ),
        );
        print('About Page');
      } else if (choice == 'Quit') {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        print('Quit');
      }
    },
    itemBuilder: (BuildContext context) {
      return [
        const PopupMenuItem<String>(
          value: 'Settings',
          child: Text('Settings'),
        ),
        const PopupMenuDivider(height: 20),
        const PopupMenuItem<String>(
          value: 'Emergency Profile',
          child: Text('Emergency Profile'),
        ),
        const PopupMenuDivider(height: 20),
        const PopupMenuItem<String>(
          value: 'Emergency Contacts',
          child: Text('Emergency Contacts'),
        ),
        const PopupMenuDivider(height: 20),
        const PopupMenuItem<String>(
          value: 'FAQ',
          child: Text('FAQ'),
        ),
        const PopupMenuDivider(height: 20),
        const PopupMenuItem<String>(
          value: 'About',
          child: Text('About'),
        ),
        const PopupMenuDivider(height: 20),
        const PopupMenuItem<String>(
          value: 'Quit',
          child: Text('Quit'),
        ),
      ];
    },
  );
}
