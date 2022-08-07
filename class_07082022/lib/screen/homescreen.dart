import 'package:card_swiper/card_swiper.dart';
import 'package:class_07082022/interface/my_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List Banner
  List<Myslider> banners = [
    Myslider(
      id: 1,
      image: 'https://picsum.photos/300/300',
      link: 'https://www.google.com',
      title: 'Banner1',
    ),
    Myslider(
      id: 2,
      image: 'https://picsum.photos/300/300',
      link: 'https://www.google.com',
      title: 'Banner2',
    ),
    Myslider(
      id: 3,
      image: 'https://picsum.photos/300/300',
      link: 'https://www.google.com',
      title: 'Banner3',
    ),
  ];
  List name = ['John Doe', 'Jane Doe', 'Jame Doe'];
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 200,
              color: Colors.red,
              child: Swiper(
                itemBuilder: (context, index) {
                  return Image.network(
                    banners[index].image,
                    fit: BoxFit.fitHeight,
                  );
                },
                autoplay: true,
                itemCount: banners.length,
                scrollDirection: Axis.horizontal,
                pagination:
                    const SwiperPagination(alignment: Alignment.bottomCenter),
                control: const SwiperControl(),
              ),
            ),
            Text("สวัสดี : ${name[1]}"),
            Text("อายุ : $age ปี"),
          ],
        ),
      ),
    );
  }
}
