import 'package:flutter/material.dart';

import '../../../constants.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       double width = MediaQuery.of(context).size.width;
    return Container(
            width: width,
            height: 150,
            //color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(38, 20, 38, 38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        
                        decoration: BoxDecoration(
                          color: Colors.green,
                                      
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                        child: Icon(
                          Icons.check,
                          color: kwhite,
                          size: 15,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Products",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id lectus enim et erat fringilla. Scelerisque egestas nulla orci enim",
                   style: TextStyle(
                        color: kgreyColor, fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                 
                ],
              ),
            ),
          );
  }
}