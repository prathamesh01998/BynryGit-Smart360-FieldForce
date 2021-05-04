import 'package:Field_Force/component/app_bar.dart';
import 'package:Field_Force/screens/Report%20Screen/components/annexure.dart';
import 'package:Field_Force/screens/Report%20Screen/components/consumer_signatureReport.dart';
import 'package:Field_Force/screens/Report%20Screen/components/products.dart';
import 'package:Field_Force/screens/Report%20Screen/components/service_details.dart';
import 'package:Field_Force/screens/Report%20Screen/components/space_component.dart';
import 'package:Field_Force/screens/Report%20Screen/components/time_of_delivery.dart';
import 'package:Field_Force/screens/Report%20Screen/components/work_order_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import 'components/bottom_bar.dart';

class ReportScreen extends StatefulWidget {
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhite,
      appBar: AppBar(
        backgroundColor: kwhite,
        bottomOpacity: 0.0,
        elevation: 5.0,
        shadowColor: Colors.blue,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: kgreyColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: IconButton(
              icon: Icon(
                Icons.share,
                color: kgreyColor,
              ),
              onPressed: () {
                // appbarnotifiction;
              },
            ),
          )
        ],
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            "Report",
            style: TextStyle(
                color: kblack, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ]),
      ),
    bottomNavigationBar: BottomBar(),

      body: SingleChildScrollView(
              child: Column(
          children: [
            Container(
              width: width,
              height: 150,
              //color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.flag,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "SA1234567",
                        style: TextStyle(
                            color: kblue,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Lorem ipsum dolor",
                    style: TextStyle(
                        color: kblack, fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "05 Feb 2020",
                    style: TextStyle(
                        color: kgreyColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
            SpacerComponent(),
            Annexure(),
            SpacerComponent(),
            ServiceDetails(),
            SpacerComponent(),
            WorkOrderDetails(),
            SpacerComponent(),
            Products(),
            SpacerComponent(),
            TimeofDelivery(),
             SpacerComponent(),
             ConsumerSignatureReport(),
             SpacerComponent(),
          ],
        ),
      ),
    );
  }
}
