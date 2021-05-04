
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:Field_Force/screens/Report%20Screen/report_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';
import 'package:Field_Force/component/app_bar.dart';
import 'package:Field_Force/constants.dart';
import 'package:Field_Force/screens/signatureScreen/subScreen/consumer_signature.dart';
import 'package:Field_Force/screens/signatureScreen/subScreen/tpi_signature.dart';
import 'package:flutter/material.dart';

class SignatureScreen extends StatefulWidget {
  @override
  _SignatureScreenState createState() => _SignatureScreenState();
}

class _SignatureScreenState extends State<SignatureScreen> {
  ByteData imgSign = ByteData(0);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    
    
    return Scaffold(
        backgroundColor: kwhite,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: Appbar(title: " Installation", var_type: "back")),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonTheme(
                  minWidth: 150.0,
                  height: 45.0,
                  child: RaisedButton(
                    color: Colors.deepOrangeAccent,
                    child: Text(
                      'Submit',
                      style: TextStyle(color: kwhite, fontSize: 16),
                    ),
                    onPressed: () async {
                     await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReportScreen()));
                    },
                  ),
                ),
                ButtonTheme(
                  minWidth: 150.0,
                  height: 45.0,
                  child: RaisedButton(
                    color: kwhite,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: kgreyColor, width: 1)),
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: kgreyColor, fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignatureScreen()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lorem ipsum dolor",
                style: TextStyle(color: kblack, fontSize: 14,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  navigatToSignature(context);
                },
                child: Center(
                  child: Container(
                    width: 360,
                    height: 50,
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TPI Signature",
                          style: TextStyle(color: kgreyColor, fontSize: 14),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: kgreyColor,
                          size: 14,
                        ),


                      ],
                    ),
                  ),
                ),
              ),
              imgSign.buffer.lengthInBytes == 0 ? 
              Divider(
                color: kgreyColor,
                thickness: 1,
                indent: 13,
                endIndent: 13,
              ): LimitedBox(maxHeight: 200.0, child: Image.memory(imgSign.buffer.asUint8List(),)),
              InkWell(
                onTap: () {
                   Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConsumerSignatureScreen()));
                },
                child: Center(
                  child: Container(
                    width: 360,
                    height: 50,
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Consumer Signature",
                          style: TextStyle(color: kgreyColor, fontSize: 14),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: kgreyColor,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: kgreyColor,
                thickness: 1,
                indent: 13,
                endIndent: 13,
              ),
            ],
          ),
        ));
  }

  navigatToSignature(BuildContext context) async  {
      final ByteData result  =  
               await   Navigator.push(context, MaterialPageRoute(
                                          builder: (context) =>
                                              TpiSignatureScreen()));

setState(() {
     // imgSign = result;
    });

}
}


 