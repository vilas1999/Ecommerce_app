import 'package:flutter/material.dart';
import 'state.dart';
import 'main.dart';

class Register extends StatefulWidget {


  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController(),
      email = TextEditingController(),
      college = TextEditingController(),
      password = TextEditingController(),
      contact= TextEditingController(),
      confirmPass = TextEditingController();



  void cancel() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
      if (value.length != 10)
        return 'Mobile Number must be of 10 digit';
      else
        return null;
    }

    String _validateEmail(String value) {
      if (value.isEmpty) {
        // The form is empty
        return "Enter email address";
      }

      // This is just a regular expression for email addresses
      String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
          "\\@" +
          "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
          "(" +
          "\\." +
          "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
          ")+";
      RegExp regExp =  RegExp(p);

      if (regExp.hasMatch(value)) {
        // So, the email is valid
        return null;
      }

      // The pattern of the email didn't match the regex above.
      return 'Email is not valid';
    }

    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Registration'),
          backgroundColor: Colors.red,
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 30,right: 20),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'NAME:',
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
                        controller: name,
                        decoration: InputDecoration(
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(25.0),
                              borderSide:  BorderSide(),
                            )),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter the name';
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'E-MAIL:',
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
                        controller: email,
                        decoration: InputDecoration(
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(25.0),
                              borderSide:  BorderSide(),
                            )),
                        validator: _validateEmail,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'PASSWORD:',
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
                        controller: college,
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
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'CONFIRM PASSWORD:',
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
                    controller: confirmPass,
                    keyboardType: TextInputType.number,
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
                        'CONTACT NUMBER:',
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
                    controller: contact,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border:  OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(25.0),
                          borderSide:  BorderSide(),
                        )),
                    validator: validateMobile,
                  ),
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
                              Navigator.of(context).pop();
                              runApp(MyApp());
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
                    RaisedButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        main();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      elevation: 4.0,
                      color: Colors.grey,
                      textColor: Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(' CANCEL ',
                            style: TextStyle(
                                letterSpacing: 1,
                                fontSize: 18,
                                fontWeight: FontWeight.w800)),
                      ),
                    )
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