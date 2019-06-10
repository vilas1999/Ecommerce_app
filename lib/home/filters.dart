import 'package:flutter/material.dart';
class Filter extends StatefulWidget {



  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  String dropdownValue='None';
  String dropdownValue1='1';
  String dropdownValue2='10';
  String dropdownValue3='A';

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Filters'),
    ),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('Compressor',style: TextStyle(fontWeight: FontWeight.w600),),
                DropdownButton<String>(
                  value: dropdownValue1,
                  onChanged: (String newValue1) {
                    setState(() {
                      dropdownValue1 = newValue1;
                    });
                  },
                  items: <String>['1', '2', '3', '4']
                      .map<DropdownMenuItem<String>>((String value1) {
                    return DropdownMenuItem<String>(
                      value: value1,
                      child: Text(value1),
                    );
                  })
                      .toList(),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text('Spare Parts',style: TextStyle(fontWeight: FontWeight.w600),),
                DropdownButton<String>(
                  value: dropdownValue,
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>['None', 'One', 'Two', 'Three']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                      .toList(),
                ),
              ],
            ),
          ],
        ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Price',style: TextStyle(fontWeight: FontWeight.w600),),
                    DropdownButton<String>(
                      value: dropdownValue2,
                      onChanged: (String newValue2) {
                        setState(() {
                          dropdownValue2 = newValue2;
                        });
                      },
                      items: <String>['10', '20', '30', '40']
                          .map<DropdownMenuItem<String>>((String value1) {
                        return DropdownMenuItem<String>(
                          value: value1,
                          child: Text(value1),
                        );
                      })
                          .toList(),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Services',style: TextStyle(fontWeight: FontWeight.w600),),
                    DropdownButton<String>(
                      value: dropdownValue3,
                      onChanged: (String newValue3) {
                        setState(() {
                          dropdownValue3 = newValue3;
                        });
                      },
                      items: <String>['A', 'B', 'C', 'D']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                          .toList(),
                    ),
                  ],
                ),
              ],
            ),
           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               RaisedButton(onPressed: (){
                 Navigator.of(context).pop();
               },
                 color: Colors.red,
                 child: Text('Apply'),
               ),
               RaisedButton(onPressed: (){
                 Navigator.of(context).pop();
               },
                 child: Text('Cancel'),
               )
             ],
           )
          ],
        ),
      ),
    ),
  );
  }
  }