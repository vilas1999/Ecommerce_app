import 'package:flutter/material.dart';

class Existing extends StatefulWidget {


  @override
  _ExistingState createState() => _ExistingState();
}

class _ExistingState extends State<Existing> {
  final _formKey = GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Existing User'),
          backgroundColor: Colors.red,
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 30,right: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Product Name:',
                            style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 25),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(25.0),
                              borderSide:  BorderSide(),
                            )),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter the product name';
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Bar-Code Number',
                            style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 25),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(25.0),
                              borderSide:  BorderSide(),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Model Number',
                            style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red, fontSize: 25),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(25.0),
                              borderSide:  BorderSide(),
                            )),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter the password name';
                          }
                        },
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Builder(
                      builder: (BuildContext ctx) {
                        return RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              // If the form is valid, we want to show a Snackbar
                            }
                          },

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          elevation: 4.0,
                          color: Colors.red,
                          textColor: Colors.black,
                          // splashColor: Colors.deepOrange,

                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              ' SUBMIT ',
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        );
                      },
                    ),

                  ],
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }

}