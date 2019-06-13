import 'package:flutter/material.dart';

class Tracking extends StatefulWidget {

  @override
  _TrackingState  createState() => _TrackingState();
}


class _TrackingState extends State<Tracking> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Services'),
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
                          TextSpan(text:'Applied On\n'),
                          TextSpan(text:'20th May 2019',style: TextStyle(fontSize:15,color: Colors.blue))

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

                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(onPressed: (){
                        Navigator.of(context).pop();
                      },
                        color: Colors.red,
                        child: Text('Edit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                      ),
                      RaisedButton(onPressed: (){
                        Navigator.of(context).pop();
                      },
                        child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600),),
                      )

                    ],
                  ),
                  SizedBox(
                    height: 10,
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