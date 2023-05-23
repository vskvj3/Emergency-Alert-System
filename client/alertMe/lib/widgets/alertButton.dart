import 'package:flutter/material.dart';

ElevatedButton alertButton() {
  return ElevatedButton(
    onPressed: () {
      // Handle panic button press event
      print("pressed alert");
    },
    style: ButtonStyle(
      shape: MaterialStateProperty.all<CircleBorder>(
        const CircleBorder(),
      ),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.all(120),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.red,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        Colors.white,
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        Colors.red[800]!,
      ),
      elevation: MaterialStateProperty.all<double>(10.0),
      shadowColor: MaterialStateProperty.all<Color>(
        Colors.red[800]!,
      ),
      animationDuration: const Duration(milliseconds: 200),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
    ),
    child: const Text(
      'ALERT',
      style: TextStyle(
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
