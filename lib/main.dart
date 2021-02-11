import 'package:flutter/material.dart';

import 'screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test',
      theme: ThemeData(primarySwatch: Colors.indigo,),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Test App',
                style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
            centerTitle: true,
            shadowColor: Colors.grey,
            elevation: 8,
          ),
          body: HomePage()),
    );
  }
}
