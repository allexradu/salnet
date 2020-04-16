import 'package:flutter/material.dart';
import 'calculate_bloc.dart';
export 'calculate_bloc.dart';

class CalculateProvider extends InheritedWidget {
  final calculateBloc = CalculateBloc();

  CalculateProvider({Key key, Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static CalculateBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(CalculateProvider)
            as CalculateProvider)
        .calculateBloc;
  }
}
