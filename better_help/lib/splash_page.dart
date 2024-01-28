import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key, required this.title});

  final String title;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * .25,
        child: Container(),
      ),
      appBar: AppBar(),
      body: Container(
        color: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.accessible_forward_rounded),
          label: ("home"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_to_drive_sharp),
          label: ("home"),
        ),
      ]),
    );
  }
}
