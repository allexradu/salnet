import 'package:flutter/material.dart';
import 'screens/calculate_screen.dart';
import 'blocs/calculate_provider.dart';
import 'blocs/dropdown_provider.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

class App extends StatelessWidget {
  static FirebaseAnalytics analytics = new FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      new FirebaseAnalyticsObserver(analytics: analytics);

  Widget build(BuildContext context) {
    return CalculateProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Salnet',
        navigatorObservers: <NavigatorObserver>[observer],
        home: Scaffold(
          appBar: AppBar(
            title: Text('Salnet by Allex Radu'),
            centerTitle: true,
          ),
          body: ListView(
            children: <Widget>[
              DropDownProvider(
                child:
                    CalculateScreen(analytics: analytics, observer: observer),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
