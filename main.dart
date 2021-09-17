import 'package:flutter/material.dart';
import 'main2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Application'),
        centerTitle: true,
      ),
        body: Center(
          child: Image(
             image:NetworkImage('https://images.pexels.com/photos/259707/pexels-photo-259707.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen() ));
        },
        child:Icon(Icons.arrow_forward),
        backgroundColor: Colors.red,
      ),
    );
  }
}
