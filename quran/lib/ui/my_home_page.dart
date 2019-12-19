/**
 * আমাদের  HomePage এর মধ্যে একটি কলাম,কলামের মধ্যে তিনটি কার্ড আছে 
 */

import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boring show',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            "কুরআন",
            textDirection: TextDirection.ltr,
            style: TextStyle(letterSpacing: 1.6, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: (){},)
          ],
        ),
        body: Container(
            color: Colors.grey[100],
            child: Padding(
              padding: EdgeInsets.all(21.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        child: InkWell(
                          onTap: () {
                            print("Card Tapped");
                          },
                          child: Container(
                            width: 144,
                            height: 89,
                            child: Center(
                              child: Text(
                                "সুরা",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 21),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Card(
                        child: InkWell(
                          onTap: () {
                            print("Card Tapped");
                          },
                          child: Container(
                            width: 144,
                            height: 89,
                            child: Center(
                              child: Text(
                                "আযিযা",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 21),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        child: InkWell(
                          onTap: () {
                            print("Card Tapped");
                          },
                          child: Container(
                            width: 144,
                            height: 89,
                            child: Center(
                              child: Text(
                                "অডিও",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 21),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Card(
                        child: InkWell(
                          onTap: () {
                            print("Card Tapped");
                          },
                          child: Container(
                            width: 144,
                            height: 89,
                            child: Center(
                              child: Text(
                                "সর্বশেষ পঠিত",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 21),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Card(
                        child: InkWell(
                            onTap: () {
                              print("Card Tapped");
                            },
                            child: Center(
                              child: Container(
                                width: 310,
                                height: 233,
                                child: Center(
                                  child: Text(
                                    "নোট",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 34),
                                  ),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ],
              ),
            )),

            floatingActionButton: FloatingActionButton(
              tooltip: 'Help',
              backgroundColor: Colors.lightBlue,
              child: Icon(Icons.thumb_up),
              onPressed: (){
                print('Thums up is pressed!');
              },
            ),
      ),
    );
  }
}
