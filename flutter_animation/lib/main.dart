import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    animation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.slowMiddle));
    animationController.reset();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(animation: animationController,
     builder: (BuildContext context, Widget child) {
       return Scaffold(
         body: Transform(
           transform: Matrix4.translationValues(animation.value * width, 0.0, 0.0),
           child: Center(
             child: Container(
               child: Icon(Icons.arrow_back_ios, size: 55,)
             ),
           ), 
           ),
       );
     });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
