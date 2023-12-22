import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Loginpage(),));
}
class Loginpage extends StatelessWidget{
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       child: Column(
         children: [
           Text("Logine page"),
           ElevatedButton(onPressed: (){
             // Navigator.of(context).push(MaterialPageRoute(builder: (ctx){           //button click cheyth next pagelik pokaan vndi ulla thaan
             //   return Loginpage();
             // },
             // ),
             // );
           },
             child: Text("Go to next page"),),
         ],
       ),
     ),
   );
  }

}
