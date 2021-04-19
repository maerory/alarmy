import 'package:alarmy/models/menu_info.dart';
import 'package:flutter/material.dart';
import 'package:alarmy/enums.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:alarmy/data.dart';
import 'package:alarmy/constants/theme_data.dart';
import 'package:alarmy/views/clock_page.dart';
import 'package:alarmy/views/alarm_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: menuItems
                .map((currentMenuInfo) => buildMenuButton(currentMenuInfo))
                .toList(),
          ),
          VerticalDivider(
            color: Colors.white54,
            width: 1,
          ),
          Expanded(child: Consumer<MenuInfo>(
            builder: (BuildContext context, MenuInfo value, Widget child) {
              if (value.menuType == MenuType.clock)
                return ClockPage();
              else if (value.menuType == MenuType.alarm)
                return AlarmPage();
              else
                return Container(
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(fontSize: 20),
                            children: <TextSpan>[
                      TextSpan(text: 'WIP\n'),
                      TextSpan(
                        text: value.title,
                        style: TextStyle(fontSize: 48),
                      )
                    ])));
            },
          ))
        ],
      ),
    );
  }
}

Widget buildMenuButton(MenuInfo currentMenuInfo) {
  return Consumer<MenuInfo>(
      builder: (BuildContext context, MenuInfo value, Widget child) {
    return TextButton(
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(32))),
          backgroundColor: currentMenuInfo.menuType == value.menuType
              ? CustomColors.menuBackgroundColor
              : Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 0)),
      onPressed: () {
        var menuInfo = Provider.of<MenuInfo>(context, listen: false);
        menuInfo.updateMenu(currentMenuInfo);
      },
      child: Column(
        children: <Widget>[
          Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Clock',
          ),
          SizedBox(height: 16),
          Text(
            currentMenuInfo.title ?? '',
            style: TextStyle(
                fontFamily: "avenir", color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  });
}
