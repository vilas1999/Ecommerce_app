import 'package:flutter/material.dart';
import 'request.dart';
import 'tracking.dart';
import 'previous.dart';
class Services extends StatefulWidget {
  final items=['Request Service','Track Servicing','Previous Services'];


  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {

  void _ontap(int index){
    if(index==0)
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Request() ));
    else if(index==1)
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Tracking()));
    else if(index==2)
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Previous()));
  }
  
  @override
  Widget build(BuildContext context) {
    var options=<Widget>[];
    for(var i=0;i<widget.items.length;i++){
      var d=widget.items[i];
      options.add(
       Column(
         children: <Widget>[
           ListTile(
             title: Text(d),
             trailing: Icon(Icons.arrow_forward_ios),

             onTap: () {
               _ontap(i);

             },
           ),
           Divider(
             color: Colors.grey,
           )
         ],
       ) 
      );
    }


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('SERVICES',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20,letterSpacing: 1.2),),
          elevation: 0,

        ),
      body:Column(
        children: options,
      )
    );
  }
}