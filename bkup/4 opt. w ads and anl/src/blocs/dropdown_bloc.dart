import 'package:flutter/material.dart';

class DropDownBloc {
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
}
