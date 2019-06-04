import 'main.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class SecondScreen extends StatelessWidget {
  void login(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),

                ),
                padding: EdgeInsets.only(top: 15,bottom: 15,left: 50,right: 50),

                child:Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider('https://www.mahindratractor.com/images/Album/Albumthumb/mahindra_275_eco_album.jpg'),
                      maxRadius: 60.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left:20,right:20,top:15),
                      child: Text(
                        "ELGI",
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w400,color: Colors.white,fontFamily: 'Montserrat'),
                        maxLines: 10,),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),

            SizedBox(
              height: 50,
              width: 350,

              child: RaisedButton(
                onPressed:  login,
                  textColor: Colors.white,
                color: Colors.blue,
                elevation: 10,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0)),

                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "NEW CUSTOMER",
                  style: TextStyle(letterSpacing: 2,fontSize: 18),
                ),
              ),
            ),
            //



            SizedBox(height: 10,),

            SizedBox(
              height: 50,
              width: 350,
              child: RaisedButton(
                onPressed:login,
                textColor: Colors.white,
                color: Colors.red,
                elevation: 10,

                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0)),
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "EXISTING CUSTOMER",
                  style: TextStyle(letterSpacing: 2,fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 30,),

          ],

        ),
      ),
    );
  }
}