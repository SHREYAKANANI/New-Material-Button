import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'New Material Button',
    theme: ThemeData(brightness: Brightness.dark),
    home: Button(),
    debugShowCheckedModeBanner: false,
  ));
}

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text('Old vs New Material Button',
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0))),
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                    onPressed: () {},
                    textColor: Colors.pink,
                    child:
                    Text('FlatButton old', style: TextStyle(fontSize: 30.0))),
                TextButton(
                    onPressed: () {},
                    child:
                    Text('TextButton New', style: TextStyle(fontSize: 30.0))),
                // ignore: deprecated_member_use
                RaisedButton(
                    onPressed: () {},
                    child: Text('RaisedButton Old',
                        style: TextStyle(
                          fontSize: 30.0,
                        ))),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('ElevatedButton New',
                        style: TextStyle(fontSize: 30.0))),
                OutlineButton(
                    onPressed: () {},
                    child: Text('OutlineButton old',
                        style: TextStyle(fontSize: 30.0))),
                OutlinedButton(
                    onPressed: () {},
                    child: Text('Outlined Button New',
                        style: TextStyle(fontSize: 30.0)))
              ],
            )));
  }
}




