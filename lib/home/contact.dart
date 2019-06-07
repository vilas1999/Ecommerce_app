import 'package:flutter/material.dart';

class Contact extends StatefulWidget {


  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  @override
  Widget build(BuildContext context) {
    return Text('Contact',style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,);
  }
}