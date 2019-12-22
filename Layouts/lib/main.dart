import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
    title: 'Layout',
    home: HomePage(),
  ));
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Home"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        child: Text("Container"),
        color: Colors.green,
      ),
    );
  }
}