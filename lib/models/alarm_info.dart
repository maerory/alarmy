class AlarmInfo {
  DateTime alarmDateTime;
  String description;
  bool isActive;

  // The params in '{}' brackets are optional.
  AlarmInfo(this.alarmDateTime, {this.description});
}
