import 'package:flutter/material.dart';
import '../blocs/calculate_provider.dart';

class CalculateButton extends StatefulWidget {
  _CalculateButtonState createState() => _CalculateButtonState();
}

// DOESN'T WORK! NOT IN USE!!!

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    final CalculateBloc calculateBloc = CalculateProvider.of(context);
    return new RaisedButton(
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
