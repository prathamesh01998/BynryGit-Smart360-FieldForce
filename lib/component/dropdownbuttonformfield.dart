import 'package:flutter/material.dart';


class DropButtonFormFields extends StatefulWidget {
  String dtype;

  DropButtonFormFields(String s);
  @override
  _DropButtonFormFieldsState createState() => _DropButtonFormFieldsState(this.dtype);
}

class _DropButtonFormFieldsState extends State<DropButtonFormFields> {

final String dtype;

  _DropButtonFormFieldsState(this.dtype);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
                  iconSize: 25,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  onChanged: (s) {},
                  hint: Text("${dtype}"),
                  items: [
                    DropdownMenuItem(value: '1', child: Text('Map 1')),
                    DropdownMenuItem(value: '2', child: Text('Map 2')),
                    DropdownMenuItem(value: '3', child: Text('Map 3')),
                  ],
                );
  }
}