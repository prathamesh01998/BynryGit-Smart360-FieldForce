import 'package:flutter/material.dart';

class SpacerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    return Container(
              color:Colors.blueGrey[50],
              width: width,
              height: 12,
            );
  }
}