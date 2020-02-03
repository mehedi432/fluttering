import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateful Application",
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Interest Calculator"),
          centerTitle: true,
        ),
        body: Center(child: SimpleInterestCalculator()),
      ),
      
    );
  } 
}

class SimpleInterestCalculator extends StatefulWidget {
  @override
  _SimpleInterestCalculatorState createState() => _SimpleInterestCalculatorState();
}

class _SimpleInterestCalculatorState extends State<SimpleInterestCalculator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                child: Icon(Icons.person_pin, size: 144,),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Principle",
                      hintText: 'Enter principle',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Rate of interest",
                      hintText: 'Enter percentenge',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
              ),

            Row(children: <Widget>[
              Text("name")
            ],)  



            ],
          ),
        ],
      ),
      
    );
  }
}
