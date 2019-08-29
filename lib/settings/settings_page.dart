import 'package:electro/theme/theme.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  _SettingsPageState createState() => _SettingsPageState();
}

const String NightIdle = "night_idle";
const String DayIdle = "day_idle";
const String SwitchNight = "switch_night";
const String SwitchDay = "switch_day";

class _SettingsPageState extends State<SettingsPage> {
  String animation = NightIdle;
  ThemeChanger themeChanger;
  List<String> list = List.generate(3, (i) => "Text $i");

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeChanger themeChanger = Provider.of<ThemeChanger>(context);
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Themee"),
          GestureDetector(
            onTap: () {
              setState(() {
                if (animation == NightIdle || animation == SwitchNight) {
                  animation = SwitchDay;
                  themeChanger.setTheme(ThemeData.light());
                } else if (animation == DayIdle || animation == SwitchDay) {
                  animation = SwitchNight;
                  themeChanger.setTheme(ThemeData.dark());
                }
              });
            },
            child: Container(
              height: 64,
              width: 64,
              child: FlareActor("assets/switch_daytime.flr",
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  animation: animation),
            ),
          ),
        ],
      ),
    );
  }
}
