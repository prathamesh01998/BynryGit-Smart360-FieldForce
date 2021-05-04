import 'package:Field_Force/screens/workflowInstallationScreen/components/dropDown_field.dart';
import 'package:Field_Force/screens/workflowInstallationScreen/components/inc_dec.dart';
import 'package:Field_Force/screens/workflowInstallationScreen/components/submit_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AddMaterial extends StatefulWidget {
  @override
  _AddMaterialState createState() => _AddMaterialState();
}

class _AddMaterialState extends State<AddMaterial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "TPI Signature",
                style: TextStyle(color: kgreyColor, fontSize: 14),
              ),
              InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0)),
                      ),
                      context: context,
                      builder: (builder) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Container(
                                  color: Colors.grey,
                                  width: 59,
                                  height: 4,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
                              child: Container(
                                width: 380,
                                
                                child: Column(
                                  children: [
                                    Text("Add Material",style: TextStyle(color: kblack),),
                                    SizedBox(height: 10,),
                                     DropDownField(dropDownName:"Type"),
                                     SizedBox(height: 15,),
                                       DropDownField(dropDownName:"Sub Type"),
                                       SizedBox(height: 15,),
                                         DropDownField(dropDownName:"Size"),
                                           SizedBox(height: 15,),
                                         IncDecNumberfiedd(),
                                          SizedBox(height: 15,),
                                        SubmitButton()

                                  ],
                                )
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    "+ Add Multiple",
                    style: TextStyle(color: Colors.blue[900]),
                  )),
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            color: kgreyColor,
            height: 1,
          )
        ],
      ),
    );
  }
}
