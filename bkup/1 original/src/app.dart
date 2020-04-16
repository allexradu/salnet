import 'package:flutter/material.dart';
import 'screens/calculate_screen.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Salnet',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Salnet'),
            centerTitle: true,
          ),
          body: ListView(
            children: <Widget>[
              CalculateScreen(),
            ],
          )),
    );
  }
}
