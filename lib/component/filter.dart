import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 100,
      height:100,
      child: RaisedButton(
          color: kwhite,
        
        
          shape:new RoundedRectangleBorder(
           side: BorderSide(color: kgreyColor, width: 1),
      borderRadius: new BorderRadius.circular(filterBorderRadius),
    
    ),
         padding: EdgeInsets.all(filterPadding),
          onPressed: (){
            debugPrint(" filter click");
          },
          child: SvgPicture.asset("assets/icons/filter.svg",height: filterwidthheight,width: filterwidthheight,color: kblack),
          ),
      );


      
    
  }
}
