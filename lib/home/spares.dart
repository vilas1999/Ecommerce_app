import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:video_player/video_player.dart';
import 'filters.dart';
class Spares extends StatefulWidget {

  final items=['Simple Air Piping','Compressor'];
  final image=['https://www.ingersollrandproducts.com/content/dam/ir-products/Compressors/products/simplair-compressed-air-piping-us.jpg/jcr:content/renditions/cq5dam.thumbnail.450.380.png','https://www.ingersollrandproducts.com/content/dam/ir-products/Compressors/products/simplair-compressed-air-piping-us.jpg/jcr:content/renditions/cq5dam.thumbnail.450.380.png'];
  final price=['20000','20000',];
  final barcode=['https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg','https://image.shutterstock.com/image-vector/seamless-barcode-vector-pattern-thin-260nw-641688019.jpg'];

  @override
  _SparesState createState() => _SparesState();
}

class _SparesState extends State<Spares> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  void initState() {
    // Create an store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );
    _initializeVideoPlayerFuture = _controller.initialize();
    super.initState();
  }
  @override
  void dispose() {
    // Ensure you dispose the VideoPlayerController to free up resources
    _controller.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    var options=<Widget>[];
    for(var i=0;i<widget.items.length;i++){
      var d=widget.items[i];
      var img=widget.image[i];
      var p=widget.price[i];
      var bar=widget.barcode[i];
      options.add(
        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                    SizedBox(
                      child: CachedNetworkImage(imageUrl: img,repeat: ImageRepeat.noRepeat,fit: BoxFit.contain,),
                      height: 130,
                      width: 130,
                    ),

                    Container(

                      padding: EdgeInsets.only(top:7,left: 7),
                      child:RaisedButton(
                        onPressed: () {
                          return showDialog(
                            context: context,

                            builder: (context) {


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
                                        if (snapshot.connectionState == ConnectionState.done) {
                                          // If the VideoPlayerController has finished initialization, use
                                          // the data it provides to limit the Aspect Ratio of the VideoPlayer
                                          return AspectRatio(
                                            aspectRatio: _controller.value.aspectRatio,
                                            // Use the VideoPlayer widget to display the video
                                            child: VideoPlayer(_controller),
                                          );
                                        } else {
                                          // If the VideoPlayerController is still initializing, show a
                                          // loading spinner
                                          return Center(child: CircularProgressIndicator());
                                        }
                                      },
                                    ),
                                    floatingActionButton: FloatingActionButton(
                                      onPressed: () {
                                        // Wrap the play or pause in a call to `setState`. This ensures the
                                        // correct icon is shown
                                        setState(() {

                                          // If the video is playing, pause it.
                                          if (_controller.value.isPlaying) {
                                            _controller.pause();
                                          } else {
                                            // If the video is paused, play it
                                            _controller.play();
                                          }
                                        });
                                      },
                                      // Display the correct icon depending on the state of the player.
                                      child: Icon(
                                        _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                                      ),
                                    ),
                                  ),),
                              );


                            },
                          );
                        },
                        color: Colors.blue,
                        child: Text('Watch Video',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom:10.0),
                      child: Text(d,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                    ),
                    Text('Price:'+"\u20B9" +p.toString(),style: TextStyle(fontSize: 16),),

                    RaisedButton(onPressed: (){
                      return showDialog(
                        context: context,

                        builder: (context) {

                          return AlertDialog(
                            content:  Container(
                              height: 150,
                              width: 150,
                              child: CachedNetworkImage(imageUrl: bar,fit: BoxFit.contain,),
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

                    Container(

                      padding: EdgeInsets.only(top:7,left: 7),
                      child:RaisedButton(
                        onPressed: _watch,
                        color: Colors.red,
                        child: Text('Buy Item',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ),
        ),
      );

    }




    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('SPARE PARTS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20,letterSpacing: 1.8),),
        elevation: 0,

      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
      //  scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
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
                          hintText: 'Search Spares',

                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.fromLTRB(
                              15.0, 5.0, 0.0, 5.0),
                          border:
                          OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0))
                      ),
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: options,

              )
            ),
          ],
        ),
      ),
    );
  }
  void _watch(){}
}