import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class Appbar extends StatelessWidget {
  final String title;

  const Appbar({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: AppBar(
          
          backgroundColor:kPrimaryColor,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: IconButton(
            icon: SvgPicture.asset("assets/icons/Menu.svg"),
            onPressed: () {
              debugPrint("navbar click");
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                debugPrint("search click");
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1),
              child: IconButton(
                icon: Image.asset(
                  "assets/icons/bell-2-16.png",
                  width: appbarheightwidth,
                  height: appbarheightwidth,
                ),
                onPressed: () {
                  debugPrint("notification click");
                },
              ),
            )
          ],
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(title),
              ]),
        ),
      ),
    ]);
  }
}
