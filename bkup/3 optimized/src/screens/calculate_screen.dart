import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';
import '../blocs/calculate_provider.dart';
import '../blocs/dropdown_provider.dart';
import '../widgets/display_table.dart';
import '../widgets/number_field.dart';
import '../widgets/display_dropdowm.dart';

class CalculateScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CalculateScreenState();
  }
}

class CalculateScreenState extends State<CalculateScreen> with ValidationMixin {
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
          });
        }
      },
    );
  }
}
