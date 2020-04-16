import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';
import '../functii.dart';

class CalculateScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CalculateScreenState();
  }
}

class CalculateScreenState extends State<CalculateScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  int persoaneInIntretinere = null;

  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(
      new DropdownMenuItem(
        child: new Text('0 persoane'),
        value: 0,
      ),
    );
    listDrop.add(
      new DropdownMenuItem(
        child: new Text('1 persoana'),
        value: 1,
      ),
    );
    listDrop.add(
      new DropdownMenuItem(
        child: new Text('2 persoane'),
        value: 2,
      ),
    );
    listDrop.add(
      new DropdownMenuItem(
        child: new Text('3 persoane'),
        value: 3,
      ),
    );
    listDrop.add(
      new DropdownMenuItem(
        child: new Text('4+ persoane'),
        value: 4,
      ),
    );
  }

  String textField = '';
  String displayCAS = '';
  String displayCASS = '';
  String displayCFS = '';
  String displaySalariuImpozitabil = "";
  String displayImpozitSalariu = "";
  String displaySalariuNet = "";
  String displaySalariuBrut = "";
  String displayDeducerePersonala = "";
  int deducere = 0;

  int salariuBrut = 0;
  var functii = new Functii();

  Widget build(context) {
    loadData();

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: numberField(),
                  ),
                  Container(margin: EdgeInsets.only(left: 50.0)),
                  displayDropDown(),
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(top: 15.0)),
            calculateButton(),
            Container(margin: EdgeInsets.only(top: 15.0)),
            displayTable(),
          ],
        ),
      ),
    );
  }

  Widget displayDropDown() {
    return new Container(
      padding: EdgeInsets.only(top: 25.0),
      child: new DropdownButton(
        value: persoaneInIntretinere,
        items: listDrop,
        hint: Text('Pers. in intretinere: '),
        onChanged: (int value) {
          persoaneInIntretinere = value;
          print(value);
          setState(() {});
        },
      ),
    );
  }

  Widget displayTable() {
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
                displaySalariuBrut,
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
                displayCFS,
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
                displayCAS,
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
                displayDeducerePersonala,
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
                displaySalariuImpozitabil,
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
                displayImpozitSalariu,
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
                displaySalariuNet,
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

  Widget numberField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Salariu Brut:',
        hintText: 'Salariu Brut',
      ),
      validator: (String value) {
        if (int.tryParse(value) != null) {
          if (persoaneInIntretinere != null && int.tryParse(value) >= 1950) {
            return null;
          } else if (persoaneInIntretinere == null) {
            return 'Selectati pers. intretinere';
          }
        }
        return 'Salariu invalid sau <1950';
      },
      onSaved: (String value) {
        textField = value;
      },
    );
  }

  Widget calculateButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Calculeaza!'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          setState(() {
            calculate();
          });
        }
      },
    );
  }

  void calculate() {
    salariuBrut = int.parse(textField);
    displaySalariuBrut = salariuBrut.toString();
    double cAS = (salariuBrut * 10.5) / 100;
    double cASS = (salariuBrut * 5.5) / 100;
    double cFS = (salariuBrut * 0.5) / 100;
    // double salariuInpozibil = salariuBrut - (cAS + cASS + cFS) - 250;
    double salariuInpozibil = salariuBrut -
        (cAS + cASS + cFS) -
        functii.calculateDeducere(persoaneInIntretinere, salariuBrut);
    displayDeducerePersonala = functii
        .calculateDeducere(persoaneInIntretinere, salariuBrut)
        .toString();
    double impozitSalariu = (salariuInpozibil * 16) / 100;
    double salariuNet = salariuBrut - (cAS + cASS + cFS + impozitSalariu);
    displayCAS = cAS.toStringAsFixed(2);
    displayCASS = cASS.toStringAsFixed(2);
    displayCFS = cFS.toStringAsFixed(2);
    displaySalariuImpozitabil = salariuInpozibil.toStringAsFixed(2);
    displayImpozitSalariu = impozitSalariu.toStringAsFixed(2);
    displaySalariuNet = salariuNet.toStringAsFixed(2);
  }
}
