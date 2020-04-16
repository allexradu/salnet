import 'package:flutter/material.dart';
import '../blocs/calculate_provider.dart';

class DisplayTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CalculateBloc calculateBloc = CalculateProvider.of(context);
    return Table(
      border: TableBorder.all(width: 1.0),
      children: [
        TableRow(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                'Salariu Brut: ',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                calculateBloc.displaySalariuBrut,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                'Contributia la Fondul de Somaj (CFS): ',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                calculateBloc.displayCFS,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                'Contributia la Asigurarile Sociale de Sanatate (CASS):',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                calculateBloc.displayCAS,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                'Deducere Personala:',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                calculateBloc.displayDeducerePersonala,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                'Venit Impozitabil:',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                calculateBloc.displaySalariuImpozitabil,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                'Impozit pe venit:',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                calculateBloc.displayImpozitSalariu,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                'Salariu Net:',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                calculateBloc.displaySalariuNet,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
