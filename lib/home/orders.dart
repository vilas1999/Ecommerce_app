import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elgi/ordered.dart';
import 'package:elgi/delivered.dart';

class Orders extends StatefulWidget {



  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {


  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(

          appBar: AppBar(

           // leading: Icon(IconData(0xf290, fontFamily: 'MyFlutterApp')),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(width: 30,),

                Text('My Orders'),
               // SizedBox(width: 10,),
                Icon(IconData(0xf290, fontFamily: 'MyFlutterApp')),
                SizedBox(width: 30,),

              ],
            ),

            centerTitle: true,
            bottom: TabBar(
              tabs: <Widget>
             [
              Text('Ordered',style: TextStyle(fontSize: 18),),
              Text('Delivered',style: TextStyle(fontSize: 18))
            ],
            ),
          ),

          body: TabBarView(children: <Widget>[
            Ordered(),
            Delivered()
          ],
          physics:ClampingScrollPhysics(),
          ),
        ),
      );
    
  }
}