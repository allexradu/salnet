import 'package:flutter/material.dart';
import 'screens/calculate_screen.dart';
import 'blocs/calculate_provider.dart';
import 'blocs/dropdown_provider.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

class App extends StatelessWidget {
  final FirebaseAnalytics analytics = new FirebaseAnalytics();

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
          ),
        ),
        navigatorObservers: [
          new FirebaseAnalyticsObserver(analytics: analytics),
        ],
      ),
    );
  }
}
