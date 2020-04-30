import 'dart:convert';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String title;
  final String block;

  Details({Key key, this.title, this.block}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'আরও বিষয় যুক্ত প্রসঙ্গে',
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('আশা করতেছি আপনারা সাথে থাকলে আরও সুন্দর করতে পারবো ইনশাআল্লাহ।', textAlign: TextAlign.center,),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('বাতিল করুন'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () async {
                _neverSatisfied();
              }),
        ],
        backgroundColor: Colors.purple[900],
        centerTitle: true,
        title: Text(
          "${widget.title}",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/image1.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          child: FutureBuilder(
              future:
                  DefaultAssetBundle.of(context).loadString('assets/data.json'),
              builder: (context, snapshot) {
                var data = jsonDecode(snapshot.data.toString());
                // print(data);

                return ListView.builder(
                    itemCount: data == null ? 0 : data.length,
                    itemBuilder: (BuildContext context, int index) {
                      String inputBlock = widget.block;
                      String dataBlock = data[index]['block'];

                      return Container(
                          child: inputBlock == dataBlock
                              ? Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        Text(
                                          data[index]['title'],
                                          style: TextStyle(
                                              fontSize: 21,
                                              color: Colors.deepPurple,
                                              fontWeight: FontWeight.w800),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          data[index]['text'],
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : null);
                    });
              }),
        ),
      ),
    );
  }
}
