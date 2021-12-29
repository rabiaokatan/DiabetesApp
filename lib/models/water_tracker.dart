import 'package:flutter/cupertino.dart';

final string 
class WaterFields {
  static final String id = '_id';
  static final int totalGlass = 'totalGlass';
  static final int glassCounter = 'glassCounter';
}

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