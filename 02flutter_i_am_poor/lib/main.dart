import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent[100],
        appBar: AppBar(
          title: const Center(
            child: Text("I am Poor"),
          ),
          backgroundColor: Colors.yellowAccent[700],
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/broke.jpg'),
          ),
        ),
      ),
    ),
  );
}
