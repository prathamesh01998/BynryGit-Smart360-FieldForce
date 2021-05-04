import 'package:Field_Force/component/app_bar.dart';
import 'package:Field_Force/component/installation_details.dart';
import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';


class Installation_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),child: Appbar(title:"Installation",var_type:"back")),
        
        body:InstallationDetails() ,
    );
  }
}