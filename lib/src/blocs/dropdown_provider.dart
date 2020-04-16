import 'package:flutter/material.dart';
import 'dropdown_bloc.dart';
export 'dropdown_bloc.dart';

class DropDownProvider extends InheritedWidget {
  final dropDownBloc = DropDownBloc();

  DropDownProvider({Key key, Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static DropDownBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(DropDownProvider)
            as DropDownProvider)
        .dropDownBloc;
  }
}
