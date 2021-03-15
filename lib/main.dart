import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade700,
          title: Center(
            child: Text(
              'Ask Me Anything.',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'RocknRollOne',
              ),
            ),
          ),
        ),
        body: Container(
          child: MyApp(),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var ball = 1;
  var max = 18;
  void change() {
    setState(() {
      ball = Random().nextInt(max) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'images/ball$ball.png',
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 80.0,
                height: 80.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.indigo.shade700,
                  tooltip: 'Increment Counter',
                  onPressed: () {
                    change();
                  },
                  child: const Icon(
                    Icons.contact_support_outlined,
                    size: 60.0,
                    color: Colors.deepOrange,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
