import 'package:flutter/material.dart';

class Dealer extends StatefulWidget {


  @override
  _DealerState createState() => _DealerState();
}

class _DealerState extends State<Dealer> {

  @override
  Widget build(BuildContext context) {
    return Text('Dealer',style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,);
  }
}