import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String title;
  final IconData icon;

  CustomContainer(
      {@required this.onPressed, @required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          
      child: Card(
        elevation: 1.6,
        color: Colors.transparent,
        borderOnForeground: false,
        child: InkWell(
          splashColor: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Center(
                child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Icon(
                    icon,
                    color: Colors.purple[900],
                  ),
                ),
                Text(
                  this.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[900]),
                ),
              ],
            )),
          ),
          onTap: onPressed,
        ),
      ),
    ));
  }
}
