import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        leading: Text("Bright's Tech class"),
        actions: [Icon(Icons.menu)],
        leadingWidth: 200, 
      ), // This trailing comma makes auto-formatting nicer for build methods.
      body: ListView.separated(itemBuilder: (BuildContext context, int index){
        return ListTile(
          leading: Image.asset("images/woman.png"),
          title: Text("Flutter App"),
          subtitle: Text("first class of the day"),
          trailing: Icon(Icons.hail_outlined),
        );
      }, 
      separatorBuilder: (BuildContext context, int index) => const SizedBox(), 
      itemCount: 25),
      
    
    );
  }
}
