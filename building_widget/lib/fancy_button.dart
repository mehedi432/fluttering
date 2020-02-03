import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class FancyButton extends StatelessWidget {

  final GestureTapCallback onPressed;

  FancyButton({@required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.orange,
      splashColor: Colors.orangeAccent,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Add',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      onPressed: onPressed,
    );
  }
}