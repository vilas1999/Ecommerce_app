import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:video_player/video_player.dart';
class Spares extends StatefulWidget {



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
    return Scaffold(
      body: SingleChildScrollView(
      //  scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
                            child: CachedNetworkImage(imageUrl: 'https://www.ingersollrandproducts.com/content/dam/ir-products/Compressors/products/simplair-compressed-air-piping-us.jpg/jcr:content/renditions/cq5dam.thumbnail.450.380.png',repeat: ImageRepeat.noRepeat,fit: BoxFit.contain,),
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
                          Text('SimpleAir Piping',style: TextStyle(fontWeight: FontWeight.w600),),
                          Text('Price:20000',),
                          Container(

                            padding: EdgeInsets.only(top:7,left: 7),
                            child:RaisedButton(
                              onPressed: _watch,
                              color: Colors.red,
                              child: Text('Buy Item',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _watch(){}
}