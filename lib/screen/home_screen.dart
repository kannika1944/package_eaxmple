import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:package_eample/screen/about_us_screen.dart';

import 'calculation_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sliders = [
    "images/slider_1.jpg",
    "images/slider_2.jpg",
    "images/slider_3.jpg",
    "images/slider_4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("หัวเรื่อง"),
            ),
            ListTile(
              title: Text("ข่าวสาร"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AboutUsScreen()),
                );
              },
              title: Text("เกี่ยวกับเรา"),
            )
          ],
        ),
      ),
      body: Container(
        child: Swiper(
          control: SwiperControl(),
          itemCount: sliders.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(sliders[index]);
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          switch (value) {
            case 0:
              break;
            case 1:
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CalculationScreen()));
              break;
            case 2:
              break;
            case 3:
              break;
          }
        },
        backgroundColor: Colors.pink,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calculate,
              color: Colors.green,
            ),
            label: 'Calculate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.amber),
            label: 'Profile',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: 'Settings',
          // ),
        ],
      ),
    );
  }
}
