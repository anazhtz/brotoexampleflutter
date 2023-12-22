
import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(home: Listview(),));

}

class Listview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("List view sample"),
     ),
     body: SafeArea(
       child: ListView.separated(itemBuilder: (anas,index){
              return  ListTile(
        title: Text("Leo Messi $index"),
        subtitle: Text("Hi anas bro "),
                leading: CircleAvatar(radius: 30,backgroundImage: NetworkImage("https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt12dbddde5342ce4c/648866ff21a8556da61fa167/GOAL_-_Blank_WEB_-_Facebook_-_2023-06-13T135350.847.png?auto=webp&format=pjpg&width=3840&quality=60"),),
                trailing: Text("1$index:00 am"),
      );
       }, separatorBuilder: (anas,index){
         return Divider();
           }, itemCount:50),

       // child: ListView(children: List.generate(200, (index) {                          //list view koduthitt columns undakkaam ..
       //   return Column(
       //     children: [
       //       Text("Text $index"),
       //       Divider(thickness: 6,),
       //     ],
       //   );
       //
       // },)         //one click list add cheyyan use akkunnu list.genarate
       // ),
     ),
   );
  }

}