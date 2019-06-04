import 'main.dart';
import 'package:flutter/material.dart';
import 'choose.dart';
import 'signup.dart';

void main() {

    int a=1;
  if(a==1)
    runApp(MyApp());
  else if(a==2)
    runApp(Choose());
  else
    Register();
}