 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

    class Togglebutton extends StatefulWidget {
    @override
    _TogglebuttonState createState() => _TogglebuttonState();
    }

    class _TogglebuttonState extends State<Togglebutton> {
    List<bool> isSelected;

    @override
    void initState() {
        isSelected = [true, false];
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return Container(
       
        child: ToggleButtons(
         constraints: BoxConstraints(minWidth: togglebuttonminwidth, minHeight: togglebuttonminheight),
         borderColor: kgreyColor,
         fillColor: Colors.indigo[900],
         borderWidth: 2,
         selectedBorderColor: kblack,
         selectedColor: kwhite24,
         borderRadius: BorderRadius.circular(50),
         children: <Widget>[
             Padding(
             padding: const EdgeInsets.all(0),
             child: SvgPicture.asset("assets/icons/location.svg",height: togglebuttonheight,width: togglebuttonwidth,color: kblack,),
             ),
             Padding(
             padding: const EdgeInsets.all(0),
             child: SvgPicture.asset("assets/icons/Menu.svg",height: togglebuttonheight,width: togglebuttonwidth,color:kblack,),),
             
         ],
         onPressed: (int index) {
           debugPrint("toggle click");
             setState(() {
             for (int i = 0; i < isSelected.length; i++) {
                 isSelected[i] = i == index;
                 
                 
             }
             });
         },
         isSelected: isSelected,
         ),
        );
    }
    }