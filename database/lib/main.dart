import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:typed_data';


void main () {
   runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: DatabaseApp(),
      ),
    );
  }
}

class DatabaseApp extends StatefulWidget {
  @override
  _DatabaseAppState createState() => _DatabaseAppState();
}

class _DatabaseAppState extends State<DatabaseApp> {

  
  void call () async {
    print(await data());
  }

  Future data () async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "quran.db");

    // Copy from asset
    ByteData data = await rootBundle.load(join("assets", "quran.db"));
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await new File(path).writeAsBytes(bytes, flush: true);  
    Database db = await openDatabase(path);
    db.execute('select * from sura');
  }
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}