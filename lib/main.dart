import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String titleee = "Build PC";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleee,
      home: homeBody(),
    );
  }

  Scaffold homeBody() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          titleee,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      backgroundColor: Colors.greenAccent,
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [buildCard()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box_rounded),
      ),
    );
  }

  Card buildCard() {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(10), child: Icon(Icons.search_rounded))
        ],
      ),
    );
  }
}
