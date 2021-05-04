import 'package:Field_Force/screens/ff_dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';


void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Feild Force',
      
    theme: ThemeData(
     // scaffoldBackgroundColor: Colors.blue[900],
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    home: FieldForceDashboardScreen(),
            
    );
  }
}

