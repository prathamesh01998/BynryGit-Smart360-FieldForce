import 'package:Field_Force/screens/workflowInstallationScreen/components/subtask_checkbox.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../constants.dart';





class Animal {
  final int id;
  final String name;

  Animal({
    this.id,
    this.name,
  });
}

class DropDownTask extends StatefulWidget {
  DropDownTask({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _DropDownTaskState createState() => _DropDownTaskState();
}

class _DropDownTaskState extends State<DropDownTask> {
 

  @override
  Widget build(BuildContext context) {
    
    
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
    return  SingleChildScrollView(
        child: ExpansionTileCard(
                    baseColor:Colors.blueGrey[50],
                    expandedColor: Colors.blueGrey[50],
                    key: cardA,
                  
                    title: Row(
                      children: [
                         Text(
                         " Sub Task",
                          style: TextStyle(
                              color: kgreyColor,fontSize: 13),
                        ),
                      
                        SizedBox(
                          width: 18,
                        ),
                       
                      ],
                    ),
                    children: [
                          SubTaskChechBox(subTaskName:"Sub Task 1"),
                         SubTaskChechBox(subTaskName:"Sub Task 2"),
                         SubTaskChechBox(subTaskName:"Sub Task 3"),
                         SubTaskChechBox(subTaskName:"Sub Task 4"),
                    ]
        )
                  );
      
    
  }
}