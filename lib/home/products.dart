import 'package:flutter/material.dart';

class Product extends StatefulWidget {


  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {

  @override
  Widget build(BuildContext context) {
    return Text('Product',style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,);
  }
}