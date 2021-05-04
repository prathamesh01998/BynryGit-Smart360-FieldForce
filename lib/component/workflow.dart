import 'package:Field_Force/component/Tabs/overview.dart';
import 'package:Field_Force/component/Tabs/product.dart';
import 'package:Field_Force/component/Tabs/reading.dart';
import 'package:Field_Force/component/Tabs/task.dart';
import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';

import 'Tabs/help.dart';


class WorkFlow extends StatefulWidget {
  @override
  _WorkFlowState createState() => _WorkFlowState();
}

class _WorkFlowState extends State<WorkFlow> with SingleTickerProviderStateMixin {
  var _tabcontroller;
  @override
  void initState() {
    // TODO: implement initState
    _tabcontroller = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
        return   DefaultTabController(
            length: 5, // length of tabs
            initialIndex: 0,
            
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
              Container(
                color: kPrimaryColor,
                child: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      labelColor: kwhite,
                      indicatorColor:kwhite,
                      indicatorWeight: 3,
                     indicatorSize: TabBarIndicatorSize.label,
                      unselectedLabelColor: kgreyColor,
                      tabs: [
                         Tab(
                            text: "Overview",
                          ),
                          Tab(
                            text: "Task",
                          ),
                          Tab(
                            text: "Product",
                          ),
                          Tab(
                            text: "Readings",
                          ),
                           Tab(
                            text: "Help",
                          ),
                      ],
                    ),
                     Container(
              color:Colors.blueGrey[50],
              width: width,
              height: 12,
            )
                  ],
                  
                ),
              ),
              Container(
                height: height * 0.68, //height of TabBarView
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.blue, width: 0.5))
                ),
                child: TabBarView(
                  
                  children: <Widget>[
                  Overview(),
                         Task(),
                         Product(),
                         Reading(),
                      Help()
                ])
              ),
                
              ]));
  }
}