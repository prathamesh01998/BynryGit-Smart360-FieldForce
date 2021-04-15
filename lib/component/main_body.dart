import 'dart:ffi';

import 'package:flutter/material.dart';

import '../constants.dart';

class MainBody extends StatelessWidget {
  @override
  final double value;

  const MainBody({Key key, this.value}) : super(key: key);

  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return  Container(
                  margin: EdgeInsets.only(top: size.height * value),
                  height: mainbodyHeight,
                  decoration: BoxDecoration(
                      color: kwhite,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(filterBorderRadius),
                          topRight: Radius.circular(filterBorderRadius))),
                );
  }
}