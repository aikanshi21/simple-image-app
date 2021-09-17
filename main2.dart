import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(MaterialApp(
      home: SecondScreen(),
  ));
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Application'),
        centerTitle: true,
      ),
      body: Center(
        child: Image(
          image: AssetImage('assets/pic.jpg'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.push((context), MaterialPageRoute(builder: (context) => MyApp() ));
        },
        child:Icon(Icons.arrow_forward),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.startDocked,
    );
  }
}