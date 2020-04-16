import '../functions/functii.dart';
import 'package:flutter/material.dart';

class CalculateBloc {
  var functii = new Functii();
  int persoaneInIntretinere = null;

  final formKey = GlobalKey<FormState>();

  String textField = '';
  String displayCAS = '';
  String displayCASS = '';
  String displayCFS = '';
  String displaySalariuImpozitabil = "";
  String displayImpozitSalariu = "";
  String displaySalariuNet = "";
  String displaySalariuBrut = "";
  String displayDeducerePersonala = "";

  void calculate() {
    int salariuBrut = int.parse(textField);
    displaySalariuBrut = salariuBrut.toString();
    double cAS = (salariuBrut * 10.5) / 100;
    double cASS = (salariuBrut * 5.5) / 100;
    double cFS = (salariuBrut * 0.5) / 100;
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
