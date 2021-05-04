import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer' as dev;



// var  filter =  log("filter Click");

var appbarnavgation = log("Navbar click");
var appbarsearch = log("Search click");
var appbarnotifiction = log("notification click");





void togglebutton({Error error, String msg}){
dev.log(msg,error:error);
}

void filter({String msg,  Error error}){

dev.log(msg,error: error);
}