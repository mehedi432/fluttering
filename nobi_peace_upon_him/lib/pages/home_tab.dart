import 'package:flutter/material.dart';
import 'package:nobijirjiboni/pages/home.dart';
import 'package:nobijirjiboni/pages/home_list.dart';
import 'package:nobijirjiboni/pages/contact.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  TabBar makeTabBar() {
    return TabBar(
      indicatorWeight: 1.6,
      indicatorColor: Colors.white,
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.home),
        ),
        Tab(
          icon: Icon(Icons.book),
        ),
        Tab(
          icon: Icon(Icons.contacts),
        ),
      ],
      controller: tabController,
    );
  }

  TabBarView tabBarView(tabs) {
    return TabBarView(
      physics: BouncingScrollPhysics(),
      children: tabs,
      controller: tabController,
    );
  }

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
                // Text('আরও চেষ্টা করতেছি সুন্দর করার জন্যে ।'),
                Text('আশা করতেছি আপনারা সাথে থাকলে আরও সুন্দর করতে পারবো ।',textAlign: TextAlign.center,),
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
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("নবীজির জীবনী"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () async {
                _neverSatisfied();
              },
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.purple[900],
          bottom: makeTabBar(),
        ),
        drawer: Drawer(
          elevation: 13,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple[900],
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "নবীজির জীবনী",
                        style: TextStyle(
                          letterSpacing: 1.6,
                          color: Colors.white,
                          fontSize: 21,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1.6,
                        height: 13,
                      ),
                      Text(
                        "আমাদের প্রিয় নবী হযরত মুহাম্মাদ (সাঃ) এর জীবনী লিখে শেষ করা যাবে না । তাও আমার এই ক্ষুদ্র প্রয়াস মানুষের কাছে ছোট করে সংক্ষিপ্ত জীবনী তুলে দেওয়ার ।",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 1.6,
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 89.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('ডিজাইন এবং ডেভেলপ', style: TextStyle(fontSize: 17.0),),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                        child: Divider(color: Colors.purple[900], thickness: 1.6,),
                      ),
                      Text('আব্দুল্লাহ আল মেহেদী'),
                      Text('dellab.net'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        body: tabBarView(<Widget>[
          Home(),
          HomeList(),
          Contact(),
        ]),
      ),
    );
  }
}
