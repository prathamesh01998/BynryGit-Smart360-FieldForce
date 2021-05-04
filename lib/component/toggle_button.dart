import 'package:Field_Force/screens/AppointmentScreen/Components/appointment_body.dart';
import 'package:Field_Force/screens/AppointmentScreen/Components/map_screen.dart';
import 'package:Field_Force/screens/AppointmentScreen/appointment_dashboarrd_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../logger.dart';

class Togglebutton extends StatefulWidget {
  @override
  _TogglebuttonState createState() => _TogglebuttonState();
}

class _TogglebuttonState extends State<Togglebutton> {
  bool isSelected = false;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
            
          setState(() {
         isSwitched = value;

            if (isSwitched == true) {
              
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MapSCreen()));
                  
            } else {
             Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AppointmentDashboard()));
              //print(isSwitched);
            }
          });
        },
        activeTrackColor: Colors.lightGreenAccent,
        activeColor: Colors.green,
      ),
    );
  }
}
