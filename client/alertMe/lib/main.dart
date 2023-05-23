import 'dart:async';
import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loading App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoadingPage(),
    );
  }
}

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    startLoadingProcess();
  }

  Future<void> startLoadingProcess() async {
    // Simulate loading process
    await Future.delayed(const Duration(seconds: 10));

    // After loading, navigate to the main app
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(bottom: 100),
          height: 300,
          child: Column(children: [
            Image.asset(
              'assets/alert.png',
              height: 130,
              width: 130,
            ),

            const SizedBox(
              height: 30,
            ),
            const SizedBox(),

            const Text(
              'AlertMe',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            // CircularProgressIndicator()
          ]),
        ),
      ),
    );
  }
}
