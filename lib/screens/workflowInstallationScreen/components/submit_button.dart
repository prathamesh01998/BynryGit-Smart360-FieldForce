import 'package:flutter/material.dart';

import '../../../constants.dart';

class SubmitButton extends StatefulWidget {
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return  ButtonTheme(
              minWidth: 150.0,
              height: 45.0,
              child: RaisedButton(
                color: Colors.deepOrangeAccent,
                child: Text(
                  'Submit',
                  style: TextStyle(color: kwhite, fontSize: 16),
                ),
                onPressed: () {
                  
                }

                //Send to API
                ,
              ),
            );
  }
}