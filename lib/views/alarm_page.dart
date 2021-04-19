import 'package:flutter/material.dart';
import 'package:alarmy/constants/theme_data.dart';
import 'package:alarmy/data.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Text(
            'Alarm',
            style: TextStyle(
                fontFamily: 'avenir',
                fontWeight: FontWeight.w700,
                color: CustomColors.primaryTextColor,
                fontSize: 24),
          ),
          Expanded(
            child: ListView(
              children: alarms.map((alarm) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.green],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Icon(
                                  Icons.label,
                                  color: Colors.white,
                                  size: 24,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Office",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'avenir'),
                                ),
                              ]),
                              Switch(
                                onChanged: (bool value) {},
                                value: true,
                                activeColor: Colors.white,
                              )
                            ]),
                        Text(
                          "Mon-Fri",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'avenir'),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "07:00 AM",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'avenir',
                                    fontSize: 35,
                                    fontWeight: FontWeight.w700),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 35,
                                color: Colors.white,
                              )
                            ])
                      ]),
                );
              }).toList(),
            ),
          )
        ]));
  }
}
