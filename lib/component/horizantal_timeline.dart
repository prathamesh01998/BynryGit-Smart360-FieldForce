import 'package:flutter/material.dart';

import '../constants.dart';


class HorizantalTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                        width: 20,
                        height: 20,
                        
                        decoration: BoxDecoration(
                          color: Colors.green,
                                      
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                        child: Icon(
                          Icons.check,
                          color: kwhite,
                          size: 15,
                        ),
                      );
  }
}