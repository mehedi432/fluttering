import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/image1.jpg"),
                fit: BoxFit.cover),
          ),
          child: _HomeView(),
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 13.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      "হযরত মুহাম্মাদ (সাঃ) এর জীবনী",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.purple[900],
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.6),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Divider(
                color: Colors.purple[900],
                thickness: 1.6,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  shape: StadiumBorder(),
                  color: Colors.purple[900],
                  child: Text(
                    'আরও অ্যাপ',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  shape: StadiumBorder(),
                  color: Colors.purple[900],
                  child: Text(
                    'রেট করুন',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.purple[900],
                      size: 34.0,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.contacts,
                      color: Colors.purple[900],
                      size: 34.0,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.report,
                      color: Colors.purple[900],
                      size: 34.0,
                    ),
                    onPressed: null),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
