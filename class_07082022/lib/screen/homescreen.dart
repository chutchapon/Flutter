import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List name = ['John Doe', 'Jane Doe', 'Jame Doe'];
    int age = 20;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("สวัสดีฉันชื่อ : ${name[1]}"),
          Text("ฉันอายุ : $age ปี"),
        ],
      ),
    );
  }
}
