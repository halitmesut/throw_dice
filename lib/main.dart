import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var leftDiceNumber = 2;
  var rightDiceNumber = 3;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "D I C E",
            ),
          ),
        ),
        backgroundColor: Colors.blue[400],
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    child: Image.asset("images/dice$leftDiceNumber.png"),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    child: Image.asset("images/dice$rightDiceNumber.png"),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
