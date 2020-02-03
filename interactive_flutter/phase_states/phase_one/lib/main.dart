import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateful Application",
      home: Scaffold(
        appBar: AppBar(
          title: Text("DropDown Widget"),
          centerTitle: true,
        ),
        body: Center(child: DropdownButtonDropDownItems()),
      ),
      
    );
  } 
}


class DropdownButtonDropDownItems extends StatefulWidget {


  @override
  _DropdownButtonDropDownItemsState createState() => _DropdownButtonDropDownItemsState();
}

class _DropdownButtonDropDownItemsState extends State<DropdownButtonDropDownItems> {
  
  var _curriences = ["Taka", "Rupees", "Pound", "Dollar"];
  String _currentItemSelected = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          DropdownButton<String>(
            items: _curriences.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem), 
              );
            }).toList(),
            onChanged: (String newValueSelected) {
              // যখন আমরা একটা menuItem select করব তখন এখানের function কাজ করবে 
              _dropDownItemSelected(newValueSelected);

            },
            value: _currentItemSelected,
          ),
          Text("$_currentItemSelected")
        ],
      ),
      
    );
  }

  // আমাদের নিজস্ব মেথড এখানে লিখতে হবে 
  void _dropDownItemSelected(String newValueSelected) {           
    setState(() {
      this._currentItemSelected = newValueSelected;
      
    });
  }
}