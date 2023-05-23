//widget for the recieved alert fields in the 'Alerts recievced' section

import '../pages/AlertDetails.dart';
import 'package:flutter/material.dart';

class alertListField extends StatelessWidget {
  final String name;
  final String distance;
  final String nearFar;

  const alertListField(
      {super.key, required this.name, required this.distance, required this.nearFar});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AlertDetails(),
                ),
              )
            },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF9D1D1)),
          height: 65,
          child: Row(
            children: [
              // Container(
              //   padding:EdgeInsets.only(left:20, top:10.0, right:30),
              //   child: Column(
              //     children: [
              //       Text(name,
              //       style:TextStyle(
              //         fontSize: 16.0
              //       )),
              //       SizedBox(height:10),
              //       Text(distance,

              //       style:TextStyle(
              //         backgroundColor: Colors.green,
              //         fontSize: 13.0
              //       ),),
              //     ],
              //   ),
              // ),
              // // SizedBox(width:210.0),
              // // Text(nearFar,
              // //       style:TextStyle(
              // //         fontSize: 15.0,
              // //         color: Colors.red
              // //       )),
              // Align(
              //   alignment: Alignment.,
              //   child:Text(nearFar,
              //       style:TextStyle(
              //         fontSize: 15.0,
              //         color: Colors.red
              //       )),
              // )

              Expanded(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 18.0, top: 13),
                        child: Column(
                          children: [
                            Text(
                              name,
                              style: const TextStyle(fontSize: 15.0),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              child: Text(
                                distance,
                                style: const TextStyle(fontSize: 11.0),
                              ),
                            )
                          ],
                        ),
                      ))),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(nearFar,
                        style: const TextStyle(fontSize: 13.0, color: Colors.red)),
                  ))
            ],
          ),
        ));
  }
}
