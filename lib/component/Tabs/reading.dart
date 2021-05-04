import 'package:Field_Force/styles/styles.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
class Reading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reading",
            style: TextStyle(color: kblack, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Table(
            border: TableBorder(
                horizontalInside: BorderSide(
                    width: 1, color: kgreyColor, style: BorderStyle.solid)),
            columnWidths: {0: FractionColumnWidth(.4)},
            children: [
              TableRow(children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Readings',
                      style: productTabStyle,
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Readings", style: productTabStyle)),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Unit", style: productTabStyle)),
              ]),
              TableRow(children: [
                Padding(
                    padding: EdgeInsets.only(left: 0, top: 20, bottom: 20),
                    child: Text(
                      'GI Pipe',
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 40, top: 20),
                    child: Text(
                      "198",
                    )),
                Padding(
                    padding: EdgeInsets.only(right: 50, top: 15),
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: kgreyColor,
                        width: 1,
                      )),
                      child: Center(
                        child: Text(
                          "05",
                        ),
                      ),
                    )),
              ]),
              TableRow(children: [
                Padding(
                    padding: EdgeInsets.only(left: 0, top: 20, bottom: 20),
                    child: Text(
                      'Appliance Valve',
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 40, top: 20),
                    child: Text(
                      "200",
                    )),
               Padding(
                    padding: EdgeInsets.only(right: 50, top: 15),
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: kgreyColor,
                        width: 1,
                      )),
                      child: Center(
                        child: Text(
                          "05",
                        ),
                      ),
                    )),
              ]),
              TableRow(children: [
                Padding(
                    padding: EdgeInsets.only(left: 0, top: 20, bottom: 20),
                    child: Text(
                      'Appliance Valve',
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 40, top: 20),
                    child: Text(
                      "200",
                    )),
                Padding(
                    padding: EdgeInsets.only(right: 50, top: 15),
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: kgreyColor,
                        width: 1,
                      )),
                      child: Center(
                        child: Text(
                          "05",
                        ),
                      ),
                    )),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}