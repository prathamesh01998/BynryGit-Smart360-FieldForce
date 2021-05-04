import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';

class SubTaskChechBox extends StatefulWidget {
  final  String subTaskName;

  const SubTaskChechBox({Key key, this.subTaskName}) : super(key: key);
  @override
  _SubTaskChechBoxState createState() => _SubTaskChechBoxState();
}

class _SubTaskChechBoxState extends State<SubTaskChechBox> {
  bool _checkboxListTile = false;
  @override
  Widget build(BuildContext context) {
    return  CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(widget.subTaskName,style: TextStyle(color: kgreyColor,fontSize: 13)),
              value: _checkboxListTile,
              onChanged: (value) {
                setState(() {
                  _checkboxListTile = !_checkboxListTile;
                });
              },
            );
  }
}