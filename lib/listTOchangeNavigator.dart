import 'package:brotoexampleflutter/listviewsample.dart';
import 'package:brotoexampleflutter/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


late SharedPreferences sharedPreferences;


Future<void> main() async {     //async it is a futured function
 sharedPreferences= await SharedPreferences.getInstance();                         //shared prefference paranjaal data store cheyuth vekkaan aan
  runApp(MaterialApp(home: Whatsapp(),));
}
class Whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: ListView.separated(itemBuilder: (ctx,index){
        return ListTile(
          title: Text("Person $index"),
          subtitle: Text("Hello bro"),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx){      //list ulla items ne click cheyth next pageleek kond pokaan ulla function
              return Homepage(name: "Person $index");
            },
            ),
            );
          },

        );
      },
          separatorBuilder:  (ctx,index){
        return Divider();
          },
          itemCount: 30),
    ),
    );
  }

}