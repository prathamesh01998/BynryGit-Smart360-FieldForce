import 'package:Field_Force/component/toggle_button.dart';
import 'package:Field_Force/screens/AppointmentScreen/Components/google_map_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../constants.dart';

class MapSCreen extends StatefulWidget {
  @override
  _MapSCreenState createState() => _MapSCreenState();
}

class _MapSCreenState extends State<MapSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: kPrimaryColor,
        //
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,

          shadowColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_sharp,
              color: kgreyColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          // extendBodyBehindAppBar: true,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Togglebutton(),
              ),
            )
          ],
        ),
        body: Stack(children: [
          GoogleMapScreen(),
          Positioned(
            top: 557,
            //bottom: 41,
            left: 28,
            right: 28,
            child: Container(
              width: 326,
              height: 90,
              decoration: BoxDecoration(
                color: kwhite,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: kgreyColor.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "8",
                      style: TextStyle(color: kblack, fontSize: 22),
                    ),
                    Row(
                      children: [
                        Text(
                          "Oppoinments in this Area",
                          style: TextStyle(color: kgreyColor, fontSize: 11),
                        ),
                        SizedBox(width:10),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Icon(
                            Icons.flag,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.pink[50],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Icon(
                            Icons.call_end_outlined,
                            color: Colors.pink,
                            size: 15,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Icon(
                            Icons.construction_outlined,
                            color: Colors.blue,
                            size: 15,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Icon(
                            Icons.calendar_today,
                            color: kgreyColor,
                            size: 15,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(child: Text("+5" ,style: TextStyle(color: Colors.blue),)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
