import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LimitedBox',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'LimitedBox';

  final _length = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _length,
          itemBuilder: (BuildContext context, int index) {
            return LimitedBox(
              maxHeight: 200.0,
              // use for limit space set widget like card, container, image.
              child: Container(
                color: RandomColor
                    ._color(), // Change Color every time and display random color
              ),
            );
          }),
    );
  }
}

class RandomColor {
  static Random _random = Random();
  static Color _color() {
    return Color.fromARGB(
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
    );
  }
}
