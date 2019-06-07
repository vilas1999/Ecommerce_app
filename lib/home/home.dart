import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home extends StatefulWidget {

  int _radioValue1=0;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var name="Seach by Products";

  int _radioValue1=0;
  //int _handleRadioValueChange1=1;
  void searcbox(){

      var string=["Seach by products","Seach by Location"];
      if(_radioValue1==1)
        name="Seach by Products";
      else if(_radioValue1==0)
        name="Seach by Location";

  }
var username='Vilas';
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:15.0),
            child: SizedBox(
              //height: ,
              //width: 250,
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: _radioValue1,
                    onChanged: (int e)=> _change(e),
                  ),
                  new Text(
                    'Search by Products',
                    style: new TextStyle(fontSize: 14.0),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: _radioValue1,
                   onChanged:(int e)=> _change(e),
                  ),
                  new Text(
                    'Search by Location',
                    style: new TextStyle(fontSize: 14.0),
                  ),

                ],
            ),
          )
          ),
          Container(
            height: 50,
            width: 300,
            child: TextFormField(
              keyboardType: TextInputType.text,
              obscureText: false,
              //style: style,
              decoration: InputDecoration(
                  hintText: name,
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.red,
                      backgroundImage:CachedNetworkImageProvider('https://www.thephotoargus.com/wp-content/uploads/2018/10/prettyflowers18.jpg'),
                    ),
                    SizedBox(width: 10,),
                    Text('Welcome Back  \n'+username,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
              SizedBox(width: 30,),
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('Your Orders'),
                    Icon(Icons.shopping_cart,size: 30,)
                  ],
                ),
              )
            ],
          ),
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('A'),
                Text('A'),
                Text('A'),
              ],
            ),
          )
        ],


      ),
    ),
  );
  }
  void _change(int e)
  {
    searcbox();

    setState(() {
      if(e==0)
        _radioValue1=0;
      else if(e==1)
        _radioValue1=1;

    });
  }

  }