import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Delivered extends StatefulWidget {



  @override
  _DeliveredState createState() => _DeliveredState();
}

class _DeliveredState extends State<Delivered> {

  var rating=0.0;
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
                            Text('Delivery On: \n'+'20th June 19',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w600,fontSize: 15),textAlign: TextAlign.center,),
                            SizedBox(height: 10,),

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
                          textColor: Colors.black,
                          child:Row(
                            children: <Widget>[

                              Text('Add Feedback and Reviews'),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      /*  Container(
                            height: 200,
                            width: 200,
                            child: SmoothStarRating(
                              rating: rating,
                              size: 45,
                              starCount: 5,
                              spacing: 2.0,
                              allowHalfRating: true,
                              onRatingChanged: (value) {
                                setState(() {
                                  rating = value;
                                });
                              },
                            )
                        ) ,*/

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
                Center(
                  child: Text('PRODUCT REVIEW',style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold),),
                  ),
                 SizedBox(height: 15,),
                 Container(
                   height: 280,
                   child: new TextField(
                     keyboardType: TextInputType.multiline,
                     maxLines: 25,
                     decoration: InputDecoration(

                         contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                         hintText: "Add Comments....",
                         border:
                         OutlineInputBorder(borderRadius: BorderRadius.circular(7.0))),


                   ),
                 ),
                SizedBox(height: 10,),
                Text('Rate Product'.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                SmoothStarRating(
                      rating: rating,
                      size: 40,
                      starCount: 5,
                      spacing: 2.0,
                      allowHalfRating: true,
                      onRatingChanged: (value) {
                        setState(() {
                          rating = value;
                        });
                      },
                    ),

                SizedBox(height: 25,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                      color: Colors.red,
                      child: Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                    ),
                    RaisedButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                      child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600),),
                    )

                  ],
                )
              ],
            ),
          ),
        )

    );
  }
}