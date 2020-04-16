import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';
import '../blocs/calculate_provider.dart';
import '../blocs/dropdown_provider.dart';
import '../widgets/display_table.dart';
import '../widgets/number_field.dart';
import '../widgets/display_dropdowm.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'dart:io' show Platform;

//const String testDevice = '';

class CalculateScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CalculateScreenState();
  }
}

class CalculateScreenState extends State<CalculateScreen> with ValidationMixin {
  static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    //testDevices: testDevice != null ? <String>[testDevice] : null,
    keywords: <String>['finance', 'salary', 'calculator'],
    contentUrl: 'http://www.allexradu.com',
    birthday: DateTime.now(),
    childDirected: false,
    gender: MobileAdGender.unknown,
  );

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  String bannerId = Platform.isIOS
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3940256099942544/6300978111';

  String appID = Platform.isIOS
      ? 'ca-app-pub-0463943530925483~7253656685'
      : 'ca-app-pub-0463943530925483~2568306214';

  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: bannerId,
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event $event");
      },
    );
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
      adUnitId: 'ca-app-pub-3940256099942544/1033173712',
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event $event");
      },
    );
  }

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-0463943530925483~7253656685');
    _bannerAd = createBannerAd()
      ..load()
      ..show();
  }

  void dispose() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
    super.dispose();
  }

  Widget build(context) {
    final CalculateBloc calculateBloc = CalculateProvider.of(context);
    final dropDownBloc = DropDownProvider.of(context);

    dropDownBloc.loadData();
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: calculateBloc.formKey,
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: NumberField(),
                  ),
                  Container(margin: EdgeInsets.only(left: 50.0)),
                  DisplayDropDown(),
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(top: 15.0)),
            calculateButton(calculateBloc),
            Container(margin: EdgeInsets.only(top: 15.0)),
            DisplayTable(),
          ],
        ),
      ),
    );
  }

  Widget calculateButton(CalculateBloc calculateBloc) {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Calculeaza!'),
      onPressed: () {
        if (calculateBloc.formKey.currentState.validate()) {
          calculateBloc.formKey.currentState.save();
          setState(() {
            calculateBloc.calculate();
            createInterstitialAd()
              ..load()
              ..show();
          });
        }
      },
    );
  }
}
