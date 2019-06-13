import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Ordered extends StatefulWidget {



  @override
  _OrderedState createState() => _OrderedState();
}

class _OrderedState extends State<Ordered> {

  var location='a';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all( 8),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text('Compressor'.toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),

                    ),
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
                                style: TextStyle(fontSize: 14,
                                color: Colors.grey),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                maxLines: 5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:10.0,bottom: 10),
                              child: Text('Price :'+"\u20B9" +'50000',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                            ),
                            Text('Delivery By: \n'+'20th June 19',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 15),textAlign: TextAlign.center,),
                            SizedBox(height: 10,),
                            RaisedButton(onPressed: (){
                              return showDialog(
                                context: context,

                                builder: (context) {

                                  return MyDialog();


                                },
                              );

                            },
                              color: Colors.white,
                              elevation: 0,
                              textColor: Colors.grey,
                              child:Row(
                                children: <Widget>[

                                  Text('View More'),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              ),
                            )
                            //Text("\u20B9")
                          ],
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        Container(
                          padding: EdgeInsets.only( left: 10),
                          child: RaisedButton(
                            onPressed: _watch,
                            color: Colors.green,
                            child: Text('Edit', style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only( left: 10),
                          child: RaisedButton(
                            onPressed: _watch,
                            color: Colors.grey,
                            child: Text('Cancel', style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),),
                          ),
                        )

                      ],
                    )
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
  void _watch(){}
}

class MyDialog extends StatefulWidget {
  @override


  _MyDialogState createState() => new _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  var rating=0.0;


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content:Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                      children: <TextSpan>[
                        TextSpan(text:'Delivered By : '),
                        TextSpan(text:'20th June 19',style: TextStyle(color: Colors.blue))

              ]
                    ),


                ),
                SizedBox(height: 10,),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                          fontSize: 17,

                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                      children: <TextSpan>[
                        TextSpan(text:'Location:\n'),
                        TextSpan(text:'#124,12 Main,3rd cross ,Indiranagara, Bengaluru-562135 ',style: TextStyle(color: Colors.blue))

                      ]
                  ),
                ),
                SizedBox(height: 10,),
                Text('Tracking:',style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  //  color: Colors.black
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(height: 7,),
                        Row(
                          children: <Widget>[
                            Icon(Icons.done_all,color: Colors.green,size: 30,),
                            SizedBox(width: 20,),
                            Text('Approved')
                          ],
                        ),
                        SizedBox(height: 7,),
                        Row(
                          children: <Widget>[
                            Icon(Icons.done_all,color: Colors.green,size: 30,),
                            SizedBox(width: 10,),
                            Text('Processing')
                          ],
                        ),
                        SizedBox(height: 7,),
                        Row(
                          children: <Widget>[
                            Icon(Icons.done_all,color: Colors.grey,size: 30,),
                            SizedBox(width: 25,),
                            Text('Delivery')
                          ],
                        ),
                        SizedBox(height: 7,),
                        Row(
                          children: <Widget>[
                            Icon(Icons.done_all,color: Colors.grey,size: 30,),
                            SizedBox(width: 29,),
                            Text('Service')
                            
                          ],
                        )
                        ,
                        SizedBox(height: 10,),
                        Text('Bar Code:',style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          //  color: Colors.black
                        ),
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          child: CachedNetworkImage(imageUrl: 'https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg',fit: BoxFit.contain,),
                        ),

                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )

    );
  }
}