import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Previous extends StatefulWidget {

  @override
  _PreviousState  createState() => _PreviousState();
}


class _PreviousState extends State<Previous> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previous Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(

          children: <Widget>[

            Card(
              elevation: 10,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 8,),
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
                          TextSpan(text:'Service For\n'),
                          TextSpan(text:'Industrial, Cast Iron Compressors  Cast Iron Compressors  3-40 hp',style: TextStyle(fontSize:15,color: Colors.blue))

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
                          TextSpan(text:'Problem Reported\n'),
                          TextSpan(text:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut ',style: TextStyle(fontSize:15,color: Colors.blue))

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
                          TextSpan(text:'Service Station\n'),
                          TextSpan(text:'Lorem ipsum dolor sit amet',style: TextStyle(fontSize:15,color: Colors.blue))

                        ]
                    ),
                  ),

                  SizedBox(height: 10,),
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
                          TextSpan(text:'Service Appointed On\n'),
                          TextSpan(text:'26th May 2019',style: TextStyle(fontSize:15,color: Colors.blue))

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
                          TextSpan(text:'Charges\n'),
                          TextSpan(text:"\u20B9" +'2000',style: TextStyle(fontSize:15,color: Colors.blue))

                        ]
                    ),
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
            )
          ],
        ),
      ),
    );
  }
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
                  child: Text('SERVICE REVIEW',style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold),),
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
                Text('Rate Service'.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),),
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