import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
    
      child: Column(
        children: [
          Expanded(
            child: Stepper(
              type: StepperType.vertical,
              physics: ScrollPhysics(),
             
              // onStepCancel: () {
              //   _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
              // },
              controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
                return Row(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    // Container(
                    //     color: Colors.deepOrangeAccent,
                    //     child: FlatButton(
                    //           onPressed: onStepContinue, child: Text("PROCEED"))),
                    
                  ],
                );
              },
              steps: <Step>[
                Step(
                  title: new Text('Under Ground Installation'),
                  content:Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim explicari, quod quaeritur,"),
                 
                ),
                Step(
                  title: new Text('GI- Installation'),
                  content: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim explicari, quod quaeritur,"),
                
                ),
                Step(
                  title: new Text('Air RFC'),
                  content: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliter enim explicari, quod quaeritur,"),
                 
                ),
              
              ],
            ),
          ),
         
        ],
      ),
    );
  }

  
}
