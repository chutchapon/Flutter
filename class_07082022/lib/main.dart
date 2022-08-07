import 'package:flutter/material.dart';

import 'screen/api_screen.dart';
import 'screen/homescreen.dart';
import 'screen/playscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      // home: PlayScreen(),
      // home: APIScreen(),
    );
  }
}
