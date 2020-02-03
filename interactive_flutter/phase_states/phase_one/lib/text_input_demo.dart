import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateful Application",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
          centerTitle: true,
        ),
        body: Center(child: UserInput()),
      ),
      
    );
  } 
}


class UserInput extends StatefulWidget {
  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: (String string) {
                setState(() {
                  name = string;
                });
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: (String string) {
                setState(() {
                  name = string;
                });
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: (String string) {
                setState(() {
                  name = string;
                });
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 21),
            child: Text("You have entered $name"),
          ),
        ],
        
      ),
    );
  }
}