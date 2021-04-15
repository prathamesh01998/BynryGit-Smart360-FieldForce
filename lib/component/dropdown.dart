import 'package:flutter/material.dart';

import '../constants.dart';

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  // List listItem = ["Today", "Yesterday"];

  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
                        height: dropdownheight,
                        width: dropdownwidth,
                        child: DecoratedBox(
                          decoration: ShapeDecoration(
                            color: kPrimaryColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                  color: kgreyColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(dropdownRadius)),
                            ),
                          ),
                          child: Center(
                            child: DropdownButton(
                                dropdownColor: kPrimaryColor,
                                icon: Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: kwhite,
                                ),
                                style: TextStyle(color: kwhite),
                                underline: SizedBox(),
                                value: _value,
                                items: [
                                  DropdownMenuItem(
                                    child: Text("Today"),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Yesterday"),
                                    value: 2,
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _value = value;
                                  });
                                }),
                          ),
                        ),
                      );
  }
}