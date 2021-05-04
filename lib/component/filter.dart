import 'package:Field_Force/component/filter_form.dart';
import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../logger.dart';

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
          filter(msg:"filter cilcks",error:Error());
           Navigator.push(context, MaterialPageRoute(
                                          builder: (context) =>
                                              FilterForm()));

          },
          child: SvgPicture.asset("assets/icons/filter.svg",height: filterwidthheight,width: filterwidthheight,color: kblack),
          ),
      );


      
    
  }
}
