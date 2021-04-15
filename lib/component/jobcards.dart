import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';


class Jobcard extends StatefulWidget {
  @override
  _JobcardState createState() => _JobcardState();
}

class _JobcardState extends State<Jobcard> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      itemBuilder: (context,index){
          return Card(
            child: Column(
              crossAxisAlignment :CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 2, 5, 0),
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
                  padding: const EdgeInsets.all(jobCardrPadding),
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
                    padding: const EdgeInsets.all(jobCardrPadding),
                    child: Text("lorem ipsum dolor",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: kblack,
                      fontSize: jobCardrfontsizetitle
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(jobCardrPadding),
                    child: Text("923 Hendrickson Street, Warsaw, Oklahoma, 4822 USA",style: TextStyle(
                      color: kgreyColor,
                      fontSize: jobCardrfontsizeaddress
                    ),),
                  )
              ],
            ),
            
          );
    },
    itemCount: 3,
    
    );
  }
}