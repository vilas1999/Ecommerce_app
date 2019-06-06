import 'main.dart';
import 'package:flutter/material.dart';
import 'choose.dart';
import 'sidebar.dart';

void main() {

    int a=1;
  if(a==1)
    runApp(MyApp());
  else if(a==2)
    Choose();
  else if(a==3)
    runApp(SideBar());
  else
    runApp(MyApp());
}