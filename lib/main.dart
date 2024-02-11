import 'package:flutter/material.dart';
import 'package:pr2/packages/conectivits_status.dart';
import 'package:pr2/packages/info_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  List<Widget> screens = [
    const InfoPage(),
    const ConectivityStatus(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple.shade100,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
          centerTitle: true,
          title: const Text(
            'Team Kraken ',
          ),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.deepPurple.shade200,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              // backgroundColor: Colors.blue.shade200
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert),
              label: 'Package',
            ),
          ],
        ),
      ),
    );
  }
}