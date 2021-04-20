import 'package:flutter/material.dart';

class AlarmInfo {
  DateTime alarmDateTime;
  String description;
  bool isActive;
  List<Color> gradientColors;

  // The params in '{}' brackets are optional.
  AlarmInfo(this.alarmDateTime, {this.description, this.gradientColors});
}
