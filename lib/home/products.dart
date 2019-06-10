import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:video_player/video_player.dart';
import 'filters.dart';
class Product extends StatefulWidget {



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
    return Scaffold(
      body: SingleChildScrollView(
       //  scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
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
                          hintText: 'Search Products',
                          contentPadding: EdgeInsets.fromLTRB(
                              15.0, 5.0, 0.0, 5.0),
                          border:
                          OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
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
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: <Widget>[
                          SizedBox(
                            child: CachedNetworkImage(
                              imageUrl: 'https://images.financialexpress.com/2017/10/DHWg-0XV0AATWTO.jpg?w=660&h=440&imflag=true',
                              repeat: ImageRepeat.noRepeat,
                              fit: BoxFit.contain,),
                            height: 130,
                            width: 130,
                          ),
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
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Compressor',
                            style: TextStyle(fontWeight: FontWeight.w600),),
                          Container(
                            width: 180,
                            child: Text(
                              "3-40 HP Single  and two-Stage Industrial Piston Compressors",
                              style: TextStyle(fontSize: 14),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              maxLines: 5,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 7, left: 7),
                            child: RaisedButton(
                              onPressed: _watch,
                              color: Colors.red,
                              child: Text('Buy Item', style: TextStyle(
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


  /*void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Filters"),
          content: new DropdownButton<String>(
            value: dropdownValue,
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
                .toList(),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },

            ),
        new FlatButton(
        child: new Text("Apply"),
        onPressed: () {
        Navigator.of(context).pop();
        },)
          ],
        );
      },
    );
  }*/
}