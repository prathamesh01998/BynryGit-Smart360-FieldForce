import 'package:flutter/material.dart';

import '../../../constants.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                text: 'SMART',
                style: TextStyle(fontWeight: FontWeight.bold,color: kblack,fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                      text: '360',
                      style: TextStyle(fontWeight: FontWeight.bold,color: kblue,fontSize: 18)),
                 
                ],
              ),
            ),
            ButtonTheme(
              minWidth: 134.0,
              height: 36.0,
              child: RaisedButton(
                color: Colors.deepOrangeAccent,
                child: Text(
                  'Send Copy',
                  style: TextStyle(color: kwhite, fontSize: 13),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
