import 'package:Field_Force/component/workflow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class InstallationDetails extends StatefulWidget {
  @override
  _InstallationDetailsState createState() => _InstallationDetailsState();
}

class _InstallationDetailsState extends State<InstallationDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: width,
              height: 100,
              color: kPrimaryColor,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.flag,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "SA1234567",
                              style: TextStyle(
                                  color: kwhite,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "3.41 AM",
                              style: TextStyle(color: kwhite, fontSize: 18),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 1, 0, 10),
                    child: Row(
                      children: [
                        Text(
                          "Lorem ipsum dolor",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: kwhite,
                              fontSize: jobCardrfontsizetitle),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: kgreyColor,
                    thickness: 1,
                    indent: 13,
                    endIndent: 13,
                  ),
                ],
              ),
            ),

            WorkFlow(),
           
          ]
          
          ),
    );
  }
}
