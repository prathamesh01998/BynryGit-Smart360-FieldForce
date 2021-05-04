import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../logger.dart';

class Appbar extends StatelessWidget {
  final String title;
  final String var_type ;
  // ignore: non_constant_identifier_names
  const Appbar({Key key, this.title,this.var_type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: AppBar(
          
          backgroundColor:kPrimaryColor,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: IconButton(
            icon: var_type == "back"? Icon(Icons.arrow_back_sharp) : SvgPicture.asset("assets/icons/Menu.svg"),
            onPressed: () {
              
              if (var_type == "back"){
                Navigator.pop(context);
              }
              else{
                     // appbarnavgation;
              }
            },
          ),
          
          actions: [
            
            var_type =="back" ?
            Text("")
            :IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
              // appbarsearch;
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
                // appbarnotifiction;
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
