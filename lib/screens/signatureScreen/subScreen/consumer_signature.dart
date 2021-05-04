import 'package:Field_Force/component/app_bar.dart';
import 'package:Field_Force/screens/signatureScreen/component/signaure_pad.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ConsumerSignatureScreen extends StatefulWidget {
  
  @override
  _ConsumerSignatureScreenState createState() => _ConsumerSignatureScreenState();
}

class _ConsumerSignatureScreenState extends State<ConsumerSignatureScreen> {
 
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Appbar(title: "Consumer Signature", var_type: "back")),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Center(child: Text("Please sign inside box",style: TextStyle(color: kgreyColor,fontSize: 13,fontWeight: FontWeight.w700),)),
        SizedBox(height: 25,),
        Container(
          //color: Colors.green,
          width: 400,
          height:480,
          child: SignaturePad())
        ],
      ),
    );
  }
}
