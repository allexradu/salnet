import 'package:flutter/material.dart';
import '../blocs/calculate_provider.dart';

class NumberField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CalculateBloc calculateBloc = CalculateProvider.of(context);
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Salariu Brut:',
        hintText: 'Salariu Brut',
      ),
      validator: (String value) {
        if (int.tryParse(value) != null) {
          if (calculateBloc.persoaneInIntretinere != null &&
              int.tryParse(value) >= 1950) {
            return null;
          } else if (calculateBloc.persoaneInIntretinere == null) {
            return 'Selectati pers. intretinere';
          }
        }
        return 'Salariu invalid sau <1950';
      },
      onSaved: (String value) {
        calculateBloc.textField = value;
      },
    );
  }
}
