import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Contact extends StatefulWidget {

  @override
  _ContactState  createState() => _ContactState();
}


class _ContactState extends State<Contact> {
  _launchURL() async {
    const url = 'mailto:vilasm1999@gmail.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL1() async {
    const url = 'tel:8970374280';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('ABOUT',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20,letterSpacing: 1.8),),
        elevation: 0,

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverList(delegate: SliverChildListDelegate([
              SizedBox(height: 10,),

              Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'About Elgi'.toUpperCase(),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(

                      backgroundImage: CachedNetworkImageProvider(
                          'https://media.licdn.com/dms/image/C4D0BAQGzjIP7jmINpg/company-logo_200_200/0?e=2159024400&v=beta&t=HZQz30kTTDFtcE5MUxrS1juXAuHb4aaB8GEO2CraQfE'),
                      //child: Text(user.name[0].toUpperCase(),style: TextStyle(fontSize: 50,color: Colors.white),),
                      backgroundColor: Colors.blueGrey,
                      maxRadius: 80.0,
                      minRadius: 60.0,
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 8.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        style: TextStyle(
                            fontSize: 16, fontFamily: "Montserrat"),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Contact Elgi".toUpperCase(),
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: <Widget>[
                        ListTile(
                          dense: true,
                          leading: CircleAvatar(
                            child: Text('A',style: TextStyle(fontSize: 20),),
                            backgroundColor: Colors.blue,
                            //backgroundImage: CachedNetworkImageProvider(
                            //'https://cdn.psychologytoday.com/sites/default/files/styles/image-article_inline_full/public/field_blog_entry_images/2017-06/screen_shot_2017-06-16_at_8.12.22_am.png?itok=DpMDAm4C',  ),
                          ),
                          title: Text('Anirudh',style: TextStyle(fontFamily: 'Montserrat',fontSize: 20),),
                          subtitle: Text('Marketing',style: TextStyle(fontFamily: 'Montserrat',fontSize: 15),),
                        ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                onPressed:_launchURL,
                                //  splashColor: Colors.deepOrange,
                                color: Colors.black87,
                                iconSize: 40,
                                padding: EdgeInsets.only(left:255),
                                icon: Icon(Icons.mail),
                              ),
                              IconButton(
                                onPressed:_launchURL1,
                                //splashColor: Colors.deepOrange,
                                color: Colors.black87,
                                iconSize: 40,
                                padding: EdgeInsets.only(left:20),
                                icon: Icon(Icons.call),
                              )
                            ],
                          )
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),

              // Column(
              //  children: getContactCards(2),
              //)
            ]),)
          ],
        ),
      ),
    );
  }


}