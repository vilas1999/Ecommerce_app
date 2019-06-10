import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'cart.dart';
import 'main.dart';
import 'home/spares.dart';
import 'home/home.dart';
import 'home/products.dart';
import 'home/spares.dart';
import 'home/services.dart';
import 'home/dealers.dart';
import 'home/dealers.dart';
import 'home/contact.dart';

class SideBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ELGI',
      theme: ThemeData(fontFamily: "Montserrat",
        primarySwatch: Colors.red,
      ),
      home: SideBarPage(title: 'ELGI'),

    );
  }
}


class DrawerItem{
  String title;
  DrawerItem(this.title);
}




class SideBarPage extends StatefulWidget {


  SideBarPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SideBarPageState createState() => _SideBarPageState();

  final drawerItems=[
    new DrawerItem("Home"),
    new DrawerItem("Products"),
    new DrawerItem("Spare Parts"),
    new DrawerItem("Services"),
    new DrawerItem("Dealers"),
    new DrawerItem("Contact Us"),

  ];

}

class _SideBarPageState extends State<SideBarPage> {

  int _selectedDrawerIndex = 1;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Home();
      case 1:
        return new Product();
      case 2:
        return new Spares();
      case 3:
        return new Services();
      case 4:
        return new Dealer();
      case 5:
        return new Contact();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }



  Widget build(BuildContext context) {


    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          Column(
            children: <Widget>[
              new ListTile(
                title: new Text(d.title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                selected: i == _selectedDrawerIndex,
                onTap: () => _onSelectItem(i),
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
          )
      );
    }


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        bottomOpacity: 0.5,
        title:Row(
          children: <Widget>[Text('ELGI'),
            SizedBox(width:20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CachedNetworkImage(imageUrl: 'https://www.thephotoargus.com/wp-content/uploads/2018/10/prettyflowers18.jpg',fit: BoxFit.contain,),
            )],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart,size: 30,), onPressed:(){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Cart()));
          } ),
          SizedBox(width: 20,)
        ],
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
              new Column(children: drawerOptions),
              ListTile(
                title: Text('Logout',textAlign: TextAlign.left,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                onTap: (){
                 runApp(MyApp());
              },
              ),

            ],
          ),
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}