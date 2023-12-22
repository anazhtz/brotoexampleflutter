import 'package:flutter/material.dart';

class homescreen extends StatefulWidget{
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int _counter=0;          //result cheyyan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(_counter.toString()),),
          floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){
            print(_counter);
            setState(() {
              _counter=_counter+1;
            });
          } ,),
    );
  }
}