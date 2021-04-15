import 'package:Field_Force/component/appointment_stats.dart';
import 'package:Field_Force/component/dropdown.dart';
import 'package:Field_Force/component/filter.dart';
import 'package:Field_Force/component/jobcards.dart';
import 'package:Field_Force/component/main_body.dart';
import 'package:Field_Force/component/performance.dart';
import 'package:Field_Force/component/piechart.dart';
import 'package:Field_Force/component/row_stats.dart';
import 'package:Field_Force/screens/sliverlist.dart';
import 'package:Field_Force/component/toggle_button.dart';
import 'package:Field_Force/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class AppointmentBody extends StatefulWidget {
  @override
  _AppointmentBodyState createState() => _AppointmentBodyState();
}

class _AppointmentBodyState extends State<AppointmentBody> {
  String valueChoose;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                MainBody(
                  value: 0.35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Performance(performance: "Your Performance", val: 85),
                      Dropdown(),
                    ],
                  ),
                ),
                Rowstats(),
                SlidingUpPanel(
                  panel: Positioned(
                    top: 292,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
                          child: Row(
                            children: [
                              Text("Appointment", style: appointmentStyle),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                          child: Togglebutton(),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                          child:
                              Container(width: 41, height: 41, child: Filter()),
                        ),
                      ],
                    ),
                  ),
                  body: Positioned(
                  top: 350,
                  left: 13,
                  child: Row(
                    children: [
                      Text(
                        "Todays",
                        style: appointmentStyle,
                      ),
                    ],
                  ),
                ),
                ),
                // Positioned(
                //   top: 350,
                //   left: 13,
                //   child: Row(
                //     children: [
                //       Text(
                //         "Today",
                //         style: appointmentStyle,
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0, 385, 0, 15),
                //   child: Sliverlist(),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
