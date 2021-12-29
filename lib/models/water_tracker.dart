import 'package:flutter/cupertino.dart';

class Water {
  final int? id;
  final int totalGlass;
  final int glassCounter;

  Water({this.id, required this.totalGlass, required this.glassCounter});

  Map<String, dynamic> toMap(){
    return {
      'id' : id,
      'totalGlass' : totalGlass,
      'glassCounter' : glassCounter,
    };
  }
  @override
  String toString(){
    return 'Water{id: $id, totalGlass: $totalGlass, glassCounter: $glassCounter}';
  }
}