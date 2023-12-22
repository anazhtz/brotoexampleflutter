import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


late SharedPreferences sharedPreferences;


Future<void> main() async {     //async it is a futured function
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences= await SharedPreferences.getInstance();                         //shared prefference paranjaal data store cheyuth vekkaan aan
  runApp(MaterialApp(home: Datastore(),));
}
class Datastore extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(),
              ElevatedButton(onPressed: (){}, child: Text("Save value"),),
            ],
          ),
        ),
      ),
    );
  }

}