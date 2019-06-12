import 'package:flutter/material.dart';

class Request extends StatefulWidget {

  @override
  _RequestState  createState() => _RequestState();
}


class _RequestState extends State<Request> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request'),
      ),
      body: Text('Request'),
    );
  }
}