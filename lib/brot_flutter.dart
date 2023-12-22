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
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  String name="Anas";
  @override
  Widget build(BuildContext context) {
    //const use cheyyunnath arun tyml chenage cheyyaan nilkaan aan
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Expanded(
              flex: 2,  //flex use cheyyunath container nde scalling cheyyaan athayath 
              child: Container(
                color: Colors.yellow,
                // width: double.infinity,
                // height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,          //space between maximum space edth buttos maari nilkkum    //main axix kodkunnath coloum ullil ellaa widgtsum alighn cheryyan
                  crossAxisAlignment: CrossAxisAlignment.center,            //same as co
                  children: [
                    Text(name,textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.green,
                          fontSize: 50,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [                                                   //adyam row vech or button create akki , then childer vech bakki so nammak buttos align cheyyaan sugaan
                        TextButton(onPressed: (){                                    //oru text nammak click button aayi cheyyaam
                          print("text Button Clicked");
                        }, child: Text("Click me"),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.mic),)
                      ],),
                    ElevatedButton(onPressed: (){}, child: Text("Click")),       //eth elivated button means click box undavum

                  ],),

              ),
            ),
            Expanded(
                child: Container(
                  decoration:BoxDecoration(color: Colors.red,
                      borderRadius: BorderRadius.circular(50),      //box decoration cheyth athinde border color decoration method
                      border: Border.all(color: Colors.indigo,width: 8)),
                child: Center(child: Text("Welcome")),)),

            Expanded(                  //Expanded kodukkunath 2 container kodukkumbool ath 2 um same center eduth align avaan vendi aan
              child: Container(
                color: Colors.orange,
                // width: double.infinity,
                // height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,          //space between maximum space edth buttos maari nilkkum    //main axix kodkunnath coloum ullil ellaa widgtsum alighn cheryyan
                  crossAxisAlignment: CrossAxisAlignment.center,            //same as co
                  children: [
                    Text(name,textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.green,
                          fontSize: 50,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [                                                   //adyam row vech or button create akki , then childer vech bakki so nammak buttos align cheyyaan sugaan
                        TextButton(onPressed: (){                                    //oru text nammak click button aayi cheyyaam
                          print("text Button Clicked");
                        }, child: Text("Click me"),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.mic),)
                      ],),
                    ElevatedButton(onPressed: (){}, child: Text("Click")),       //eth elivated button means click box undavum

                  ],),

              ),
            )
          ],),),
    );
  }
}
