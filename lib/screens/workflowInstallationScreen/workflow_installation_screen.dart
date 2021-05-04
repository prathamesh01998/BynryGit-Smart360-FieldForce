import 'package:Field_Force/component/app_bar.dart';
import 'package:Field_Force/screens/workflowInstallationScreen/components/start_job_installation.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class WorkflowInstallation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.blueGrey[100],
      
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),child: Appbar(title:"Start Job: Installation",var_type:"back")),
        
        body:StartJobInstallation()
    );
  }
}