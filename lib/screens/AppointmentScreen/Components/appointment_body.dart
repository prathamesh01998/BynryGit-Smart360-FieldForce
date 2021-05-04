import 'dart:ui';

import 'package:Field_Force/component/appointment_stats.dart';
import 'package:Field_Force/component/dropdown.dart';
import 'package:Field_Force/component/filter.dart';
import 'package:Field_Force/component/installation_details.dart';
import 'package:Field_Force/component/jobcards.dart';
import 'package:Field_Force/component/main_body.dart';
import 'package:Field_Force/component/performance.dart';
import 'package:Field_Force/component/piechart.dart';
import 'package:Field_Force/component/row_stats.dart';
import 'package:Field_Force/constants.dart';
import 'package:Field_Force/screens/installation_screen.dart';
import 'package:Field_Force/screens/sliverlist.dart';
import 'package:Field_Force/component/toggle_button.dart';
import 'package:Field_Force/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';


class AppointmentBody extends StatefulWidget {
  @override
  _AppointmentBodyState createState() => _AppointmentBodyState();
}

class _AppointmentBodyState extends State<AppointmentBody> {
  String valueChoose;
  final double _initFabHeight = 120.0;
  double _fabHeight;
  double _panelHeightOpen;
  double _panelHeightClosed = 95.0;

  void initState() {
    super.initState();

    _fabHeight = _initFabHeight;
  }

  @override
  Widget build(BuildContext context) {
    _panelHeightOpen = MediaQuery.of(context).size.height * .80;

    Size size = MediaQuery.of(context).size;

    return Material(
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          SlidingUpPanel(
            maxHeight: _panelHeightOpen,
            minHeight: _panelHeightClosed,
            parallaxEnabled: true,
            parallaxOffset: 0.5,
            body: _body(),
            panelBuilder: (sc) => _panel(sc),
            color: Colors.blueGrey[50],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
            onPanelSlide: (double pos) => setState(() {
              _fabHeight = pos * (_panelHeightOpen - _panelHeightClosed) +
                  _initFabHeight;
            }),
          ),

          // the fab

          Positioned(
              top: 0,
              child: ClipRRect(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).padding.top,
                        color: Colors.transparent,
                      )))),
          //the SlidingUpPanel Title
        ],
      ),
    );
  }

  Widget _panel(ScrollController sc) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          controller: sc,
          children: <Widget>[
            // SizedBox(height: 18.0,),

            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Appointment", style: appointmentStyle),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                    child: Togglebutton(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Container(width: 35, height: 35, child: Filter()),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Today",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey)),

                  SizedBox(
                    height: 12.0,
                  ),
                  //
                  InkWell(
                    child: Jobcard(serviceType:"Installation"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Installation_Screen()));
                    },
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Jobcard(serviceType:"Conversion"),

                  SizedBox(
                    height: 12.0,
                  ),
                  Jobcard(serviceType:"Complaints"),

                  SizedBox(
                    height: 12.0,
                  ),
                  Jobcard(),

                  SizedBox(
                    height: 12.0,
                  ),

                  Jobcard(),
                  SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),

                  Jobcard(),
                  SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),

                  Jobcard(),
                  SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),

                  Jobcard(),
                  SizedBox(
                    height: 12.0,
                  ),
                  //
                  // Text(
                  //   """Pittsburgh is a city in the state of Pennsylvania in the United States, and is the county seat of Allegheny County. A population of about 302,407 (2018) residents live within the city limits, making it the 66th-largest city in the U.S. The metropolitan population of 2,324,743 is the largest in both the Ohio Valley and Appalachia, the second-largest in Pennsylvania (behind Philadelphia), and the 27th-largest in the U.S.\n\nPittsburgh is located in the southwest of the state, at the confluence of the Allegheny, Monongahela, and Ohio rivers. Pittsburgh is known both as "the Steel City" for its more than 300 steel-related businesses and as the "City of Bridges" for its 446 bridges. The city features 30 skyscrapers, two inclined railways, a pre-revolutionary fortification and the Point State Park at the confluence of the rivers. The city developed as a vital link of the Atlantic coast and Midwest, as the mineral-rich Allegheny Mountains made the area coveted by the French and British empires, Virginians, Whiskey Rebels, and Civil War raiders.\n\nAside from steel, Pittsburgh has led in manufacturing of aluminum, glass, shipbuilding, petroleum, foods, sports, transportation, computing, autos, and electronics. For part of the 20th century, Pittsburgh was behind only New York City and Chicago in corporate headquarters employment; it had the most U.S. stockholders per capita. Deindustrialization in the 1970s and 80s laid off area blue-collar workers as steel and other heavy industries declined, and thousands of downtown white-collar workers also lost jobs when several Pittsburgh-based companies moved out. The population dropped from a peak of 675,000 in 1950 to 370,000 in 1990. However, this rich industrial history left the area with renowned museums, medical centers, parks, research centers, and a diverse cultural district.\n\nAfter the deindustrialization of the mid-20th century, Pittsburgh has transformed into a hub for the health care, education, and technology industries. Pittsburgh is a leader in the health care sector as the home to large medical providers such as University of Pittsburgh Medical Center (UPMC). The area is home to 68 colleges and universities, including research and development leaders Carnegie Mellon University and the University of Pittsburgh. Google, Apple Inc., Bosch, Facebook, Uber, Nokia, Autodesk, Amazon, Microsoft and IBM are among 1,600 technology firms generating \$20.7 billion in annual Pittsburgh payrolls. The area has served as the long-time federal agency headquarters for cyber defense, software engineering, robotics, energy research and the nuclear navy. The nation's eighth-largest bank, eight Fortune 500 companies, and six of the top 300 U.S. law firms make their global headquarters in the area, while RAND Corporation (RAND), BNY Mellon, Nova, FedEx, Bayer, and the National Institute for Occupational Safety and Health (NIOSH) have regional bases that helped Pittsburgh become the sixth-best area for U.S. job growth.
                  //   """,
                  //   softWrap: true,
                  // ),
                ],
              ),
            ),

            //SizedBox(height: 36.0,),
          ],
        ));
  }

  Widget _body() {
    return Container(
      color: kPrimaryColor,
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Performance(performance: "Your Performance", val: 85),
                      Dropdown(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 80, 0, 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Piechart(),
                  ),
                ),
                Rowstats(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
