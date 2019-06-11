import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'home/orders.dart';

class Cart extends StatefulWidget {



  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  var _items=1;
  var amount=10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(onPressed: (){

              Navigator.push(context,MaterialPageRoute(builder: (context) => Orders()));
            },
              elevation: 10,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            color: Colors.white,
            child: Text('My Orders',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),),),
          ),
          SizedBox(width: 10,)
        ],
        actionsIconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              margin: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),

                  Text('Compressor'.toUpperCase(),textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //SizedBox(width: 10,),
                      SizedBox(
                        child: CachedNetworkImage(
                          imageUrl: 'https://images.financialexpress.com/2017/10/DHWg-0XV0AATWTO.jpg?w=660&h=440&imflag=true',
                          repeat: ImageRepeat.noRepeat,
                          fit: BoxFit.contain,),
                        height: 130,
                        width: 130,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SizedBox(height: 5,),
                          Container(
                            width: 180,
                            child: Text(
                              "3-40 HP Single  and two-Stage Industrial Piston Compressors",
                              style: TextStyle(fontSize: 14,color: Colors.grey),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              maxLines: 5,
                            ),
                          ),
    Row(
    children: <Widget>[
    IconButton(icon:Icon(IconData(58827, fontFamily: 'MaterialIcons', matchTextDirection: true),size: 30), onPressed: (){
    setState(() {
    if(_items>=1)
    _items--;
    amount=10000*_items;

    });
    }),
    Padding(
    padding: const EdgeInsets.only(left:10,right: 10),
    child: Text(_items.toString(),style:TextStyle(fontSize: 20),),
    ),
    IconButton(icon: Icon(IconData(58828, fontFamily: 'MaterialIcons', matchTextDirection: true),size: 30), onPressed: (){
    setState(() {
        _items++;
        amount=10000*_items;

    });
    })
    ],
    ),

                          Padding(
                            padding: const EdgeInsets.only(top:10.0,bottom: 10),
                            child: Text('Amount: '+ amount.toString(),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                          ),

                        ],
                      )
                    ],
                  ),

                ],

              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 55,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Total Amount: '.toUpperCase()+ amount.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white),),
            RaisedButton(onPressed: _watch,
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Text('BUY',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),),
            )
          ],
        ),
      )
    );


  }
  void _watch(){}
}