import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //theme data kodukkunnath app nde color add cheyyaan
        primaryColor: Colors
            .indigo, //appbar color            //primary color app nde primarycolor set cheyyaan
      ),
      home: Screenhome(),
    );
  }
}

class Screenhome extends StatefulWidget {
  @override
  State<Screenhome> createState() => _ScreenhomeState();               //=> call cheyyan
}

class _ScreenhomeState extends State<Screenhome> {
  final _textControler= TextEditingController();
  String _displaytext="Text will be displayed here";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 50, right: 100, top: 50, bottom: 50),
          child: Column(
            children: [
              TextField(
                controller: _textControler,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "User name",
                  border: OutlineInputBorder()
                ),
              ),
              ElevatedButton(onPressed: () {
                //get data
                print(_textControler.text);
                setState(() {
                      _displaytext=_textControler.text;
                });
              }, child: Text("Click here")),
              Text("Data will be show here"),
              Text(_displaytext),
            ],
          ),
        ),
      ),
    );
  }
}
