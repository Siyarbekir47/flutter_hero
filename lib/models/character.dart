import 'dart:collection';
import 'dart:ffi';

import 'package:flutter_hero/models/stats.dart';

class Character with Stats {
  //constructor
  Character({
    required this.name,
    required this.slogan,
    required this.id,
  });

  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  void toggleIsFav() {
    _isFav = !_isFav;
  }
}