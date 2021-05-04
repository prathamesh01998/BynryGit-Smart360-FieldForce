import 'package:Field_Force/component/dropdown.dart';
import 'package:Field_Force/component/image_picker.dart';
import 'package:Field_Force/constants.dart';
import 'package:Field_Force/screens/workflowInstallationScreen/components/dropdown_subtask.dart';
import 'package:Field_Force/screens/workflowInstallationScreen/components/workflow_dropdown_tile.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

import '../../signatureScreen/signature_screen.dart';

class StartJobInstallation extends StatefulWidget {
  @override
  _StartJobInstallationState createState() => _StartJobInstallationState();
}

class _StartJobInstallationState extends State<StartJobInstallation> {
  int _currentStep = 0;
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Stepper(
              type: StepperType.horizontal,
              physics: ScrollPhysics(),
              currentStep: _currentStep,
              onStepTapped: (step) => tapped(step),
              // onStepContinue: () {
              //   _currentStep < 3 ? setState(() => _currentStep += 1) : null;
              // },
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
                  title: new Text(''),
                  content: DropdownTileWorkFlow(
                      jobType: "Under Ground Installation"),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 0
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: new Text(''),
                  content: DropdownTileWorkFlow(jobType: "GI- Installation"),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 1
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: new Text(''),
                  content: DropdownTileWorkFlow(jobType: "Air RFC"),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 2
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: new Text(''),
                  content: DropdownTileWorkFlow(jobType: "Gas RFC"),
                  isActive: _currentStep >= 0,
                  state: _currentStep >= 3
                      ? StepState.complete
                      : StepState.disabled,
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: 50,
            decoration: new BoxDecoration(
              boxShadow: [
                //color: Colors.white, //background color of box
                BoxShadow(
                  color: kgreyColor,
                  blurRadius: 25.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                )
              ],
            ),
            child: ButtonTheme(
              minWidth: 150.0,
              height: 45.0,
              child: RaisedButton(
                color: Colors.deepOrangeAccent,
                child: Text(
                  'Proceed',
                  style: TextStyle(color: kwhite, fontSize: 16),
                ),
                onPressed: () {
                  _currentStep < 3
                      ? setState(() => _currentStep += 1)
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignatureScreen()));
                }

                //Send to API
                ,
              ),
            ),
          ),
        ],
      ),
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  proceed() {
    _currentStep < 3 ? setState(() => _currentStep += 1) : null;
  }
  // cancel() {
  //   _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  // }
}
