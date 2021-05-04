import 'package:flutter/material.dart';

class DropDownField extends StatefulWidget {
  final String dropDownName;

  const DropDownField({Key key, this.dropDownName}) : super(key: key);
  @override

  _DropDownFieldState createState() => _DropDownFieldState();
}

class _DropDownFieldState extends State<DropDownField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                          child: DropdownButtonFormField(
                            iconSize: 25,
                            style: TextStyle(color: Colors.black, fontSize: 13),
                            onChanged: (s) {},
                            hint: Text(widget.dropDownName),
                            items: [
                              DropdownMenuItem(
                                  value: '1', child: Text('Map 1')),
                              DropdownMenuItem(
                                  value: '2', child: Text('Map 2')),
                              DropdownMenuItem(
                                  value: '3', child: Text('Map 3')),
                            ],
                          ),
                        );
  }
}