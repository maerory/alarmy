import 'package:flutter/material.dart';
import 'clock_view.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('MMM-d, EEE').format(now);
    var timezoneString = now.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';
    if (!timezoneString.startsWith('-')) offsetSign = '+';
    print(timezoneString);

    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Row(
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MenuButton(title: "Clock"),
                new MenuButton(title: "Alarm"),
                new MenuButton(title: "Stopwatch"),
              ]),
          VerticalDivider(
            color: Colors.white54,
            width: 1,
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Text(
                          'Clock',
                          style: TextStyle(
                              fontFamily: "avenir",
                              color: Colors.white,
                              fontSize: 24),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                formattedTime,
                                style: TextStyle(
                                    fontFamily: "avenir",
                                    color: Colors.white,
                                    fontSize: 64),
                              ),
                              Text(
                                formattedDate,
                                style: TextStyle(
                                    fontFamily: "avenir",
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ]),
                      ),
                      Flexible(
                        flex: 4,
                        fit: FlexFit.tight,
                        child: Align(
                            alignment: Alignment.center,
                            child: ClockView(size: 250)),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Timezone',
                                style: TextStyle(
                                    fontFamily: "avenir",
                                    color: Colors.white,
                                    fontSize: 24),
                              ),
                              SizedBox(width: 16),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.language,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 16),
                                  Text(
                                    'UTC' + offsetSign + timezoneString,
                                    style: TextStyle(
                                        fontFamily: "avenir",
                                        color: Colors.white,
                                        fontSize: 14),
                                  ),
                                ],
                              )
                            ]),
                      )
                    ])),
          )
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: TextButton(
          onPressed: () {},
          child: Column(children: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
              semanticLabel: 'Clock',
            ),
            Text(title,
                style: TextStyle(
                    fontFamily: "avenir", color: Colors.white, fontSize: 14))
          ])),
    );
  }
}
