import 'package:flutter/material.dart';

class Previous extends StatefulWidget {

  @override
  _PreviousState  createState() => _PreviousState();
}


class _PreviousState extends State<Previous> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previous'),
      ),
      body: Text('Previous'),
    );
  }
}