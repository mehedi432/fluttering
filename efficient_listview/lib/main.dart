import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View",
      home: Scaffold(
        body:  getListView(),
      ),
    );
  }
}

List<String> getListElements() {
  List<String> items = List<String>.generate(100, (counter) => "Item $counter");
  return items;
}


Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(
    itemCount: listItems.length,
    itemBuilder: (context, index) {

      return ListTile(
        title: Text(listItems[index]),
      );
    },
  );
  return listView;
}
