import 'package:flutter/material.dart';

import 'data/event.dart';

class EventPage extends StatelessWidget {
  const EventPage(this.event, {Key key}) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.event.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            this.event.image,
            fit: BoxFit.cover,
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: 16,
          ),
          Text("Tytuł: ${this.event.title}"),
          Text("Data: ${this.event.date.toString()}"),
        ],
      ),
    );
  }
}
