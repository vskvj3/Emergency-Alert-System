import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(170, 219, 253, 1),
          title: const Text('About',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        body: Column(children: [
          Container(
            height: 200,
            padding: const EdgeInsets.only(left: 20, top: 20.0),
            child: Row(children: [
              Image.asset(
                'assets/alert.png',
                height: 130,
                width: 130.0,
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  const SizedBox(height: 38.0),
                  const Text('AlertMe', style: TextStyle(fontSize: 23.0)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Version : ',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left),
                  const SizedBox(height: 20.0),
                  Container(
                      child: const Row(children: [
                    SizedBox(width: 13.0),
                    Text(
                      'Build Date :',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ]))
                ],
              )
            ]),
          ),
          Container(
              child: Column(
            children: [
              Container(
                height: 35.0,
                width: 400.0,
                padding: const EdgeInsets.only(top: 20, left: 20.0),
                child: const Text(
                  'You can report issues to our team via email :',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                height: 45.0,
                width: 400.0,
                padding: const EdgeInsets.only(top: 20, left: 20.0),
                child: const Text(
                  'alertme@gmail.com',
                  style: TextStyle(fontSize: 16.0, color: Colors.blue),
                ),
              ),
            ],
          ))
        ]));
  }
}
