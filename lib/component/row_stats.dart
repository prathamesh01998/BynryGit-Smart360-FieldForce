import 'package:Field_Force/component/appointment_stats.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Rowstats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: EdgeInsets.fromLTRB(20, 180, 20, 10),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.brightness_1_rounded,
                            color: kgreen, size: rowstatfontsize),
                        Stats(val: 500, type: "Reading"),
                        Container(
                          height: rowstatheight,
                          width: rowstatwidth,
                          color: kwhite60,
                          margin:
                              const EdgeInsets.only(left: rowstatMarginlefftright, right: rowstatMarginlefftright),
                        ),
                        Icon(Icons.brightness_1_rounded,
                            color: kyellowaccent, size: rowstatfontsize),
                        Stats(val: 2503, type: "Bill distribution"),
                        Container(
                          height: rowstatheight,
                          width: rowstatwidth,
                          color:kwhite60,
                          margin:
                              const EdgeInsets.only(left: rowstatMarginlefftright, right: rowstatMarginlefftright),
                        ),
                        Icon(Icons.brightness_1_rounded,
                            color: kdeepOrangeAccent, size: rowstatfontsize),
                        Stats(val: 1500, type: "Notice"),
                          
                      ],
                    ),
                  ),
                );
  }
}