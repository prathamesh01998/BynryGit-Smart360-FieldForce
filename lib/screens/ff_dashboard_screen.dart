import 'package:Field_Force/component/app_bar.dart';
import 'package:Field_Force/component/ff_dashboard_body.dart';

import "package:flutter/material.dart";

import '../constants.dart';




class FieldForceDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      
     appBar: PreferredSize( preferredSize: Size.fromHeight(100.0),child: Appbar(title:"")),
      body: Body(),
    );
  }
  
}