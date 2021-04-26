import 'package:alarmy/constants/theme_data.dart';
import 'package:alarmy/models/menu_info.dart';
import 'package:alarmy/models/alarm_info.dart';
import 'package:alarmy/enums.dart';
import 'package:flutter/material.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock, title: "Clock"),
  MenuInfo(MenuType.alarm, title: "Alarm"),
  MenuInfo(MenuType.timer, title: "Timer"),
  MenuInfo(MenuType.stopwatch, title: "Stopwatch"),
];

List<AlarmInfo> alarms = [
  AlarmInfo(
      alarmDateTime: DateTime.now().add(Duration(hours: 1)),
      title: 'Office',
      gradientColorIndex: 0),
  AlarmInfo(
      alarmDateTime: DateTime.now().add(Duration(hours: 2)),
      title: 'Sport',
      gradientColorIndex: 1),
];
