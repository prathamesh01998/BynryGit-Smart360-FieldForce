import 'package:Field_Force/component/category_card.dart';
import 'package:Field_Force/component/main_body.dart';
import 'package:Field_Force/component/profile_image.dart';
import 'package:Field_Force/component/profile_name.dart';

import 'package:Field_Force/screens/appointment_dashboarrd_screen.dart';

import 'package:flutter/material.dart';

import '../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                MainBody(value: 0.26),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: ffdashboardHorizontal),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ProfileName(), ProfileImage()],
                  ),
                ),
                SafeArea(
                    child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: ffdashboardHorizontal, vertical: ffdashboardVertical),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 22,
                          mainAxisSpacing: 35,
                          childAspectRatio: 1,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(ffdashboardBorderRadius),
                              ),
                              child: CategoryCard(
                                title: "MRBD",
                                clr: korangeColor,
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(ffdashboardBorderRadius),
                              ),
                              child: InkWell(
                                child: CategoryCard(
                                  title: "Appointments",
                                  clr: kgreenAcentColor,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AppointmentDashboard()));
                                },
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(ffdashboardBorderRadius),
                              ),
                              child: CategoryCard(
                                title: "Marketing",
                                clr: kPrimaryColor,
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(ffdashboardBorderRadius),
                              ),
                              child: CategoryCard(
                                title: "Assets",
                                clr: kyellowColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
