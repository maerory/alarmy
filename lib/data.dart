import 'package:alarmy/models/menu_info.dart';
import 'package:alarmy/models/alarm_info.dart';
import 'package:alarmy/enums.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock, title: "Clock"),
  MenuInfo(MenuType.alarm, title: "Alarm"),
  MenuInfo(MenuType.timer, title: "Timer"),
  MenuInfo(MenuType.stopwatch, title: "Stopwatch"),
];

List<AlarmInfo> alarms = [
  AlarmInfo(
    DateTime.now().add(Duration(hours: 1)),
    description: "Office",
  ),
];
