import 'package:flutter/material.dart';
import 'screens/calculate_screen.dart';
import 'blocs/calculate_provider.dart';
import 'blocs/dropdown_provider.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return CalculateProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Salnet',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Salnet'),
              centerTitle: true,
            ),
            body: ListView(
              children: <Widget>[
                DropDownProvider(
                  child: CalculateScreen(),
                ),
              ],
            )),
      ),
    );
  }
}
