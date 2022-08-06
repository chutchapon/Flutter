import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('หน้าโฮมเพจ'),
      ),
      drawer: const Drawer(),
      body: Container(
        color: Colors.grey,
        margin: EdgeInsets.all(8),
        // margin: EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("สวัสดีชาวโลก"),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => [],
                    child: Text('กด'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("สวัสดีชาวโลก"),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => [],
                    child: Text('กด'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'หน้าหลัก'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'ข่าวสาร'),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone_iphone), label: 'ติดต่อ'),
          // BottomNavigationBarItem(icon: Icon(Icons.info), label: 'เกี่ยวกับ'),
        ],
      ),
    );
  }
}
