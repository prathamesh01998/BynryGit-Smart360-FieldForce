import 'package:Field_Force/component/app_bar.dart';
import 'package:Field_Force/screens/signatureScreen/component/signaure_pad.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class TpiSignatureScreen extends StatefulWidget {
  @override
  _TpiSignatureScreenState createState() => _TpiSignatureScreenState();
}

class _TpiSignatureScreenState extends State<TpiSignatureScreen> {
Image signImage;
  void displaySign(newSign){
      setState(() {
     signImage = newSign;
      });
  }
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kwhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Appbar(title: "TPI Installation", var_type: "back")),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Center(child: Text("Please sign inside box",style: TextStyle(color: kgreyColor,fontSize: 13,fontWeight: FontWeight.w700),)),
        SizedBox(height: 25,),
        Container(
          //color: Colors.green,
          width: 400,
          height:480,
          child: SignaturePad(getSign:displaySign))
        ],
      ),
    );
  }
}
