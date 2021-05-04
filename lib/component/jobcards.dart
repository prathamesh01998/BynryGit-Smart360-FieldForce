import 'package:Field_Force/constants.dart';
import 'package:Field_Force/screens/Report%20Screen/components/service_details.dart';
import 'package:flutter/material.dart';


class Jobcard extends StatefulWidget {
  final String serviceType;

  const Jobcard({Key key, this.serviceType}) : super(key: key);
  @override
  _JobcardState createState() => _JobcardState();
}

class _JobcardState extends State<Jobcard> {
  
  @override
  Widget build(BuildContext context) {
   
        return Card(
                child: Column(
                  crossAxisAlignment :CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8,),
                      Container(
                            width: 120,
                            height: 25,
                            color: Colors.blue[900],
                            child: Center(child: Text(widget.serviceType !=null ?widget.serviceType : "",style: TextStyle(color: kwhite),)),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          
                          Text("3.51 AM",style: TextStyle(
                            color: kblack,
                            fontSize: jobCardrfontsizetime,
                            fontWeight: FontWeight.w700
                          ),),
                        ],
                      ),
                    ),
                   
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                      child: Row(
                        children: [
                         
                      Icon(Icons.flag,color: Colors.green,),
                      Text("SA1234567",style: TextStyle(
                        color: kblue,
                        fontSize: jobCardrfontsizeid,
                        fontWeight: FontWeight.w700
                      ),),
                    ],
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                    child: Text("lorem ipsum dolor",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: kblack,
                      fontSize: jobCardrfontsizetitle
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 0, 10),
                    child: Text("923 Hendrickson Street, Warsaw, Oklahoma, 4822 USA",style: TextStyle(
                      color: kgreyColor,
                      fontSize: jobCardrfontsizeaddress
                    ),),
                  )
              ],
            ),
            
          );
  }
}