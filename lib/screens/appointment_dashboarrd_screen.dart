import 'package:Field_Force/component/app_bar.dart';
import 'package:Field_Force/screens/appointment_body.dart';

import 'package:Field_Force/screens/sliverlist.dart';
import 'package:flutter/material.dart';
import 'package:Field_Force/component/app_bar.dart';
class AppointmentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),child: Appbar(title:"Dashboard")),

     body: AppointmentBody(),
    );
  }
}