import 'package:flutter/material.dart';

class Request extends StatefulWidget {

  @override
  _RequestState  createState() => _RequestState();
}


class _RequestState extends State<Request> {
  String dropdownValue1='#124,12 Main,3rd cross ,Indiranagara, Bengaluru-562135';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request Servicing'),
      ),
      body:Column(
        children: <Widget>[
            Card(
              margin: EdgeInsets.all(10),
                child:Container(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          //SizedBox(height: 10,),
                          Center(
                            child: Text('Service For',style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold),),
                          ),
                          SizedBox(height: 10,),
                          Container(

                            height: 60,
                            child: new TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 8,
                              decoration: InputDecoration(

                                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                  hintText: "Product Name....",
                                  border:
                                  OutlineInputBorder(borderRadius: BorderRadius.circular(7.0))),


                            ),
                          ),
                          SizedBox(height: 10,),
                          Center(
                            child: Text('Problem',style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold),),
                          ),
                          SizedBox(height: 10,),
                          Container(

                            height: 200,
                            child: new TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 30,
                              decoration: InputDecoration(

                                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                  hintText: "Report Problem...",
                                  border:
                                  OutlineInputBorder(borderRadius: BorderRadius.circular(7.0))),


                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('Compressor',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                          SizedBox(height: 10,),
                          SingleChildScrollView(
                            child: DropdownButton<String>(
                              value: dropdownValue1,
                              onChanged: (String newValue1) {
                                setState(() {
                                  dropdownValue1 = newValue1;
                                });
                              },
                              items: <String>['#124,12 Main,3rd cross ,Indiranagara, Bengaluru-562135', '#124,12 Main,3rd cross ,Indiranagara, Bengaluru-fgadahaf', '#sgd,12 Main,3rd cross ,Indiranagara, Bengaluru-562135 ', '#sdgd,12 Main,3rd cross ,Indiranagara, Bengaluru-562135 ']
                                  .map<DropdownMenuItem<String>>((String value1) {
                                return DropdownMenuItem<String>(
                                  value: value1,
                                  child: Container(
                                    height: 100,
                                    width: 250,
                                    child: Text(value1,
                                      maxLines: 5,
                                      textAlign: TextAlign.justify,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                );
                              })
                                  .toList(),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton(onPressed: (){
                                Navigator.of(context).pop();
                              },
                                color: Colors.red,
                                child: Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                              ),
                              RaisedButton(onPressed: (){
                                Navigator.of(context).pop();
                              },
                                child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600),),
                              )

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
            )
        ],
      ),
    );
  }
}