import 'package:Field_Force/component/dropdown.dart';
import 'package:Field_Force/component/filter.dart';
import 'package:Field_Force/component/main_body.dart';
import 'package:Field_Force/component/performance.dart';
import 'package:Field_Force/component/row_stats.dart';
import 'package:Field_Force/component/toggle_button.dart';
import 'package:flutter/material.dart';

import '../component/app_bar.dart';


class Sliverlist extends StatefulWidget {
  @override
  _SliverlistState createState() => _SliverlistState();
}

class _SliverlistState extends State<Sliverlist> {
  
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return  CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          expandedHeight: size.height * 0.85,
          
          floating: true,
          leading: Appbar(title:"Dashboard"),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                MainBody(
                  value: 0.35,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Performance(performance: "Your Performance", val: 85),
                //       Dropdown(),
                //     ],
                //   ),
                // ),
                // Rowstats(),
                // Positioned(
                //   top: 292,
                //   left: 0,
                //   right: 0,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
                //         child: Row(
                //           children: [
                //             Text("Appointment",
                //                 style: TextStyle(
                //                     color: Colors.black,
                //                     fontSize: 20,
                //                     fontWeight: FontWeight.bold)),
                //             Icon(Icons.arrow_drop_down)
                //           ],
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                //         child: Togglebutton(),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                //         child:
                //             Container(width: 41, height: 41, child: Filter()),
                //       ),
                //     ],
                //   ),
                // ),
                // Positioned(
                //   top: 350,
                //   left: 13,
                //   child: Row(
                //     children: [
                //       Text(
                //         "Today",
                //         style: TextStyle(
                //             color: Colors.blueGrey,
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold),
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0, 385, 0, 15),
                //   child: Sliverlist(),
                // )
              ],
            ),
          ),
        ],
      ),
          ),
        ),
        SliverFillRemaining(
          child: Column(
            children: List<int>.generate(6, (index) => index)
                .map((index) => Container(
                      height: 40,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      color: Colors.grey[300],
                      alignment: Alignment.center,
                      child: Text('$index item'),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}