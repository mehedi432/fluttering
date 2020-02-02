import 'package:flutter/material.dart';
import 'dart:async'; // Asynchronus প্রোগ্রামিং করার জন্যে
import 'dart:convert'; // আমাদের যেই JSON ডাটা আসবে সেটাকে String এ কনভার্ট করার জন্যে
import 'package:http/http.dart' as http; // আমাদের http কন্ট্রোল করার জন্যে


void main() async {

  String _data = await getJson();
  print(_data);
  
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Json Cloud'),
          centerTitle: true,
        ),
        body: Center(child: Text("Parsing..")),
      ),
    ),
  );
}

// এই মেথড এর মধ্যে আমরা আমাদের প্রয়োজনীয় JSON ডাটা পাব String আকারে
Future<String> getJson() async {
  String apiUrl = "https://jsonplaceholder.typicode.com/posts";

  http.Response response = await http.get(apiUrl);
  return jsonDecode(response.body).toString(); 
}
