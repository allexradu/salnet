import 'package:flutter/material.dart';
import '../blocs/calculate_provider.dart';
import '../blocs/dropdown_provider.dart';

class DisplayDropDown extends StatefulWidget {
  _DisplayDropDownState createState() => _DisplayDropDownState();
}

class _DisplayDropDownState extends State<DisplayDropDown> {
  @override
  Widget build(BuildContext context) {
    final CalculateBloc calculateBloc = CalculateProvider.of(context);
    final dropDownBloc = DropDownProvider.of(context);
    return new Container(
      padding: EdgeInsets.only(top: 25.0),
      child: new DropdownButton(
        value: calculateBloc.persoaneInIntretinere,
        items: dropDownBloc.listDrop,
        hint: Text('Pers. in intretinere: '),
        onChanged: (int value) {
          calculateBloc.persoaneInIntretinere = value;
          print(value);
          setState(() {});
        },
      ),
    );
  }
}
