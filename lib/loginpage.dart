import 'package:brotoexampleflutter/brot_flutter.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Homescreen(),));
}
class Homepage extends StatelessWidget{
  final String name;          //final koduthitt vech venam 2st page nde second pageleeek vilikkan

  const Homepage({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();      //pop parayunne back pagleek pokaan
            }, child: Text("Go back"),),
          ],
        ),
      ),
    );

  }

}