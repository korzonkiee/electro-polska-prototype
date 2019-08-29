import 'package:electro/events/data/event.dart';
import 'package:flutter/material.dart';

import '../event_page.dart';

class EventCell extends StatelessWidget {
  final Event event;

  const EventCell(this.event, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EventPage(this.event)),
        );
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(this.event.image,
                fit: BoxFit.fitWidth,
                height: 120,
                width: MediaQuery.of(context).size.width),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    this.event.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
