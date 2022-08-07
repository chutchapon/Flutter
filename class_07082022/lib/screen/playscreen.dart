import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  int number = 0;
  int i = 0;
  String name = 'John Doe';
  TextEditingController nameController = TextEditingController();
  void increments() {
    setState(
      () {
        number += 1;
      },
    );
  }

  void decrements() {
    setState(
      () {
        number -= 1;
      },
    );
  }

  void changename() {
    setState(
      () {
        name = nameController.text;
        nameController.clear();
      },
    );
  }

  void reset() {
    setState(
      () {
        name = 'John Doe';
        nameController.clear();
        number = 0;
      },
    );
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
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'ชื่อ',
                      hintText: 'กรอกชื่อ',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: increments,
                child: const Text('เพิ่ม'),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: decrements,
                child: const Text('ลด'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: changename,
                child: const Text('เปลี่ยนชื่อ'),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: reset,
                child: const Text('รีเซ็ต'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
