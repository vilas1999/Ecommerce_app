import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:video_player/video_player.dart';
import 'filters.dart';
class Product extends StatefulWidget {


  final items=['Compressor','Compressor','Compressor','Compressor'];
  final image=['https://images.financialexpress.com/2017/10/DHWg-0XV0AATWTO.jpg?w=660&h=440&imflag=true','https://images.financialexpress.com/2017/10/DHWg-0XV0AATWTO.jpg?w=660&h=440&imflag=true','https://images.financialexpress.com/2017/10/DHWg-0XV0AATWTO.jpg?w=660&h=440&imflag=true','https://www.ingersollrandproducts.com/content/dam/ir-products/Compressors/products/simplair-compressed-air-piping-us.jpg/jcr:content/renditions/cq5dam.thumbnail.450.380.png'];
  final price=['700000','20000','700000','20000'];
  final barcode=['https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg','https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg','https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg','https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg'];
  final description=["3-40 HP Single  and two-Stage Industrial Piston Compressors","3-40 HP Single  and two-Stage Industrial Piston Compressors","3-40 HP Single  and two-Stage Industrial Piston Compressors","3-40 HP Single  and two-Stage Industrial Piston Compressors"];



  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {


//  String dropdownValue='One';
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  void initState() {
    // Create an store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );

    _initializeVideoPlayerFuture = _controller.initialize();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var options=<Widget>[];
    for(var i=0;i<widget.items.length;i++) {
      var d = widget.items[i];
      var img = widget.image[i];
      var p = widget.price[i];
      var bar = widget.barcode[i];
      var desc=widget.description[i];
      options.add(
          Column(
            children: <Widget>[
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8,bottom: 3),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(d.toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //SizedBox(width: 10,),
                          SizedBox(
                            child: CachedNetworkImage(
                              imageUrl:img,
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
                                  desc,
                                  style: TextStyle(fontSize: 14,
                                      color: Colors.grey),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  maxLines: 5,
                                ),
                              ),

                              RaisedButton(onPressed: (){
                                return showDialog(
                                  context: context,

                                  builder: (context) {

                                    return AlertDialog(
                                      content:  Container(
                                        height: 150,
                                        width: 150,
                                        child: CachedNetworkImage(imageUrl:bar,fit: BoxFit.contain,),
                                      ),
                                    );


                                  },
                                );

                              },
                                color: Colors.white,
                                elevation: 0,
                                textColor: Colors.black54,
                                child:Row(
                                  children: <Widget>[

                                    Text('Bar Code'),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text('Price :'+"\u20B9" +p.toString(),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17,color: Colors.green),),
                              ),


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
                          Container(
                            padding: EdgeInsets.only(top: 7, left: 7),
                            child: RaisedButton(
                              onPressed: () {
                                return showDialog(
                                  context: context,
                                  builder: ( context) {
                                    return AlertDialog(
                                      // Retrieve the text the user has typed in using our
                                      // TextEditingController
                                      content: SizedBox(
                                        width: 300,
                                        height: 300,
                                        child: Scaffold(
                                          body: FutureBuilder(
                                            future: _initializeVideoPlayerFuture,
                                            builder: (context, snapshot) {
                                              if (snapshot.connectionState ==
                                                  ConnectionState.done) {
                                                // If the VideoPlayerController has finished initialization, use
                                                // the data it provides to limit the Aspect Ratio of the VideoPlayer
                                                return AspectRatio(
                                                  aspectRatio: _controller.value
                                                      .aspectRatio,
                                                  // Use the VideoPlayer widget to display the video
                                                  child: VideoPlayer(
                                                      _controller),
                                                );
                                              } else {
                                                // If the VideoPlayerController is still initializing, show a
                                                // loading spinner
                                                return Center(
                                                    child: CircularProgressIndicator());
                                              }
                                            },
                                          ),
                                          floatingActionButton: FloatingActionButton(
                                            onPressed: () {
                                              // Wrap the play or pause in a call to `setState`. This ensures the
                                              // correct icon is shown
                                              setState(() {
                                                // If the video is playing, pause it.
                                                if (_controller.value
                                                    .isPlaying) {
                                                  _controller.pause();
                                                } else {
                                                  // If the video is paused, play it
                                                  _controller.play();
                                                }
                                              });
                                            },
                                            // Display the correct icon depending on the state of the player.
                                            child: Icon(
                                              _controller.value.isPlaying
                                                  ? Icons.pause
                                                  : Icons.play_arrow,
                                            ),
                                          ),
                                        ),),
                                    );
                                  },
                                );
                              },
                              color: Colors.blue,
                              child: Text('Watch Video', style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only( left: 7),
                            child: RaisedButton(
                              onPressed: _watch,
                              color: Colors.red,
                              child: Text('Add to Cart', style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),),
                            ),
                          )

                        ],
                      )
                    ],

                  ),
                ),
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),

      );
    }


      return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('PRODUCTS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20,letterSpacing: 1.8),),
        elevation: 0,

      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
       //  scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 7, right: 7, top: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 35,
                    width: 170,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      //style: style,
                      decoration: InputDecoration(
                          hintText: 'Search Products',
                          contentPadding: EdgeInsets.fromLTRB(
                              15.0, 5.0, 0.0, 5.0),
                          border:
                          OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 100,
                    child: RaisedButton(
                        onPressed:  () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Filter()));
                        },
                      color: Colors.white30,
                      textColor: Colors.black,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text('Filters'),
                          Icon(Icons.filter_list)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 0, right: 8),
                child: Column(
                  children: options,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  @override
  void dispose() {
    // Ensure you dispose the VideoPlayerController to free up resources
    _controller.dispose();

    super.dispose();
  }
  void _watch(){}


}