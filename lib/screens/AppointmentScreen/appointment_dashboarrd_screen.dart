import 'package:Field_Force/component/app_bar.dart';
import 'package:Field_Force/constants.dart';
import 'package:Field_Force/screens/AppointmentScreen/Components/appointment_body.dart';
// import 'installation_screen.dart';

import 'package:Field_Force/screens/sliverlist.dart';
import 'package:flutter/material.dart';
import 'package:Field_Force/component/app_bar.dart';
class AppointmentDashboard extends StatefulWidget {
  @override
  _AppointmentDashboardState createState() => _AppointmentDashboardState();
}

class _AppointmentDashboardState extends State<AppointmentDashboard> {
  int _currentIndex = 0;
   
   final _tabs= [
      AppointmentBody(),
      Center(child: Text("History," ,style: TextStyle(color: kblack),)),
      Center(child: Text("Support,",style: TextStyle(color: kblack))),
      Center(child: Text("Profile,",style: TextStyle(color: kblack) )),

   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),child: Appbar(title:"Dashboard")),

     body: _tabs[_currentIndex],
     bottomNavigationBar: ClipRRect(
       
       borderRadius: BorderRadius.only(
        topRight: Radius.circular(50),
        topLeft: Radius.circular(50),
      ),
            child: Container(
              decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 15,
     spreadRadius: 60,
              offset: Offset(20.0, 10.0),
            ),
          ],
        ),
              child: BottomNavigationBar(
         elevation:20,
         type: BottomNavigationBarType.fixed,
         currentIndex: _currentIndex,
         
         items: [
              BottomNavigationBarItem(
                icon:  _currentIndex==0 ?  Icon(Icons.dashboard_customize, color: Colors.deepOrange) :Icon(Icons.dashboard_customize, color: kgreyColor) ,
                title: Text("Dashboard" ,style: TextStyle(color: kgreyColor),),
              
                 backgroundColor: Colors.deepOrange
                ),

                BottomNavigationBarItem(
                icon: _currentIndex==1 ?  Icon(Icons.history, color: Colors.deepOrange) :Icon(Icons.history, color: kgreyColor),
                title: Text("History",style: TextStyle(color: kgreyColor)),
              
                 backgroundColor: Colors.blue
                ),

                BottomNavigationBarItem(
                icon: _currentIndex==2 ?  Icon(Icons.support_agent, color: Colors.deepOrange) :Icon(Icons.support_agent, color: kgreyColor),
                title: Text("Support",style: TextStyle(color: kgreyColor)),
               backgroundColor: Colors.green
                
                ),

                BottomNavigationBarItem(
                icon: _currentIndex==3 ?  Icon(Icons.person, color: Colors.deepOrange) :Icon(Icons.person, color: kgreyColor),
                title: Text("Profile",style: TextStyle(color: kgreyColor)),
               backgroundColor: Colors.yellow
                
                )

         ],
         onTap: (index){
                setState(() {
                  _currentIndex = index;
                  
                });
         },
         ),
            ),
     )
    );
  }
}