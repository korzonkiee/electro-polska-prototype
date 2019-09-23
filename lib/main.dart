import 'package:electro/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'events/data/events_repository.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<EventsRepository>.value(value: EventsRepository()),
      ],
      child: ChangeNotifierProvider<ThemeChanger>(
        builder: (_) => ThemeChanger(ThemeData.dark()),
        child: new MaterialAppWithTheme(),
      ),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      theme: theme.getTheme(),
      home: HomePage(),
    );
  }
}
