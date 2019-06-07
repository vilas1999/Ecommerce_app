import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class Spares extends StatefulWidget {


  @override
  _SparesState createState() => _SparesState();
}

class _SparesState extends State<Spares> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Row(

               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 200,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    //style: style,
                    decoration: InputDecoration(
                        hintText: 'Search Spares',
                        contentPadding: EdgeInsets.fromLTRB(15.0, 5.0, 0.0, 5.0),
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Text('Filter')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //SizedBox(width: 10,),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        child: CachedNetworkImage(imageUrl: 'https://www.ingersollrandproducts.com/content/dam/ir-products/Compressors/products/simplair-compressed-air-piping-us.jpg/jcr:content/renditions/cq5dam.thumbnail.450.380.png',repeat: ImageRepeat.noRepeat,fit: BoxFit.contain,),
                        height: 130,
                        width: 130,

                      ),
                      
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}