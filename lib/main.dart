import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ELGI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'ELGI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
void login(){

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:30.0,right: 30),
              child: Container(

                decoration: BoxDecoration(
                    color: Colors.red,
                  borderRadius: BorderRadius.circular(15),

                ),
                padding: EdgeInsets.only(top: 15,bottom: 15),

                 child:Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider('https://www.mahindratractor.com/images/Album/Albumthumb/mahindra_275_eco_album.jpg'),
                      maxRadius: 60.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left:20,right:20,top:15),
                      child: Text(
                        "Welcome to Elgi Equipments Ltd.We offer over 400 compressed air systemsfor mission critical applications worldwide.",
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w400,color: Colors.white),
                        maxLines: 10,),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('MOBILE NUMBER',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
      SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20),
        child: TextField(
          obscureText: false,
          //style: style,
          decoration: InputDecoration(

              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Mobile Number",
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        ),
      ),
                SizedBox(height: 15,),
                Text('PASSWORD',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20),
                  child: TextField(
                    obscureText: true ,
                    //style: style,
                    decoration: InputDecoration(

                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Password",
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
                  ),
                ),
                SizedBox(height: 20,),

              ],

            ),
            SizedBox(
              height: 50,
              width: 180,

              child: RaisedButton(
                onPressed: login,
                textColor: Colors.white,
                color: Colors.blue,
                elevation: 10,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0)),

                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "LOGIN",
                  style: TextStyle(letterSpacing: 2,fontSize: 18),
                ),
              ),
            ),
           //
            Container(
              padding: EdgeInsets.only(left:35,right:35,top:10),
              child: Text(
                "New Customer?Join us",
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 18.0),
                maxLines: 10,),
            ),


            SizedBox(height: 10,),

        SizedBox(
          height: 50,
          width: 180,
          child: RaisedButton(
            onPressed: login,
            textColor: Colors.white,
            color: Colors.red,
            elevation: 10,

              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0)),
              padding: const EdgeInsets.all(8.0),
            child: new Text(
              "SIGNUP",
              style: TextStyle(letterSpacing: 2,fontSize: 18),
            ),
          ),
        ),
          ],

        ),
      ),
    );
  }
}
