import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  // create int number
  int number = 0;
  String name = 'John Doe';

  void increments() {
    setState(() {
      number += 1;
    });
  }

  void decrements() {
    setState(() {
      number -= 1;
    });
  }

  void changename(String Newname) {
    setState(() {
      name = Newname;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlayScreen'),
      ),
      body: Column(
        children: [
          Text('ชื่อ : $name'),
          Text('ค่าปัจจุบัน : $number'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: increments,
                child: const Text('เพิ่ม'),
              ),
              ElevatedButton(
                onPressed: decrements,
                child: const Text('ลด'),
              ),
              ElevatedButton(
                onPressed: () => {
                  changename('Jane Doe'),
                },
                child: const Text('เปลี่ยนชื่อ'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
