import 'package:electro/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'events/events_page.dart';
import 'map/events_map_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jakaś apka"),
      ),
      body: IndexedStack(
        index: currentTabIndex,
        children: <Widget>[
          EventsPage(),
          EventsMap(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text('Events'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('Map'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        currentIndex: currentTabIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) => this.setState(() {
          currentTabIndex = index;
        }),
      ),
    );
  }
}
