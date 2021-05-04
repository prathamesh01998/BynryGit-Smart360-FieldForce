import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

class IncDecNumberfiedd extends StatefulWidget {
  @override
  _IncDecNumberfieddState createState() => _IncDecNumberfieddState();
}

class _IncDecNumberfieddState extends State<IncDecNumberfiedd> {
  @override
  Widget build(BuildContext context) {
    return NumberInputWithIncrementDecrement(
      numberFieldDecoration:InputDecoration(
         border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
      
  controller: TextEditingController(),
  initialValue: 5,
);
  }
}