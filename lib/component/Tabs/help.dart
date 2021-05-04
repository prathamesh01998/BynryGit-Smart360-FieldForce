import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Knowledge Center",style:TextStyle(color: kblack,fontWeight: FontWeight.w700),),
          SizedBox(
            height:12
          ),
          Text("Tutorial Video ",style:TextStyle(color: kblack,fontWeight: FontWeight.w600)),
          SizedBox(
            height:12
          ),
          Container(
            color: Colors.orange,
            width: width,
            height: 200,
          ),
          SizedBox(
            height:12
          ),
          Text("Basic Standard",style: TextStyle(color: kblack,fontWeight: FontWeight.w700),),
SizedBox(
            height:12
          ),
          Text("James Roger is our new VIP Consumer they need a meter installation for Gas for Domestic Purpose. Punctuality and efficiency in work will be appreciated. He resides in Chicago near Downtown University student residence area.",style: TextStyle(color: kgreyColor,fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}