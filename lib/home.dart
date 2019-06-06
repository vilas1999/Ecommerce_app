import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'signup.dart';
import 'existing.dart';



class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ELGI',
      theme: ThemeData(fontFamily: "Montserrat",
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
      home: HomePage(title: 'ELGI'),

    );
  }
}







class HomePage extends StatefulWidget {


  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Row(
          children: <Widget>[Text('ELGI'),
            SizedBox(width:20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CachedNetworkImage(imageUrl: 'https://www.thephotoargus.com/wp-content/uploads/2018/10/prettyflowers18.jpg',fit: BoxFit.contain,),
            )],
        )
      ),
      drawer: SizedBox(
        width: 250,
        child:Drawer(
          elevation: 20,
          child: ListView(

            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Vilas M"),
                accountEmail: Text("vilasm1999@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                  Theme.of(context).platform == TargetPlatform.iOS
                      ? Colors.red
                      : Colors.white,
                  child: Text(
                    "VM",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                title: Text('Home',textAlign: TextAlign.left,style: TextStyle(fontSize:16,fontWeight: FontWeight.w600),),
                onTap: (){}
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Products',textAlign: TextAlign.left,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Spare Parts',textAlign: TextAlign.left,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Services',textAlign: TextAlign.left,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Dealers',textAlign: TextAlign.left,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text('Contact Us',textAlign: TextAlign.left,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              )
            ],
          ),
        ),
      ),
      body: Register(),
    );
  }
}