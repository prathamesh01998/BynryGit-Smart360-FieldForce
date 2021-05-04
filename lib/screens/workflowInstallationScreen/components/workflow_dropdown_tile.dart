import 'package:Field_Force/component/image_picker.dart';
import 'package:Field_Force/screens/workflowInstallationScreen/components/add_material.dart';
import 'package:Field_Force/screens/workflowInstallationScreen/components/dropDown_field.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'dropdown_subtask.dart';

class DropdownTileWorkFlow extends StatefulWidget {
  final String jobType;

  const DropdownTileWorkFlow({Key key, this.jobType}) : super(key: key);
  @override
  _DropdownTileWorkFlowState createState() => _DropdownTileWorkFlowState();
}

class _DropdownTileWorkFlowState extends State<DropdownTileWorkFlow> {
   final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  ExpansionTileCard(
                    baseColor: kwhite,
                    expandedColor: kwhite,
                    key: cardA,
                  
                    title: Row(
                      children: [
                        Icon(
                          Icons.construction,
                          color: kgreyColor,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          widget.jobType,
                          style: TextStyle(
                              color: kblack, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    children: <Widget>[
                      Divider(
                        thickness: 1.0,
                        height: 1.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          child: Column(
                            children: [
                              Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Imagepicker(),
                        ),
                        DropDownTask(),
                         SizedBox(height: 20,),
                        AddMaterial(),
                       
                        DropDownField(dropDownName:"Status"),
                        DropDownField(dropDownName:"Add Remarks "),
                        SizedBox(height: 20,)
                            ],
                          )
                        ),
                      ),
                    ],
                  
                  );
  }
}