import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  @override
   var texts = "Hello\n" + "Thomas !";
  Widget build(BuildContext context) {
    return Container(
     child:  Text(texts,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: kwhite,
                      fontWeight: FontWeight.bold,
                      fontSize: profilefontsize)),
    );
  }
}