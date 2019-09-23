import 'package:electro/artists/widgets/artist_page.dart';
import 'package:expandable/expandable.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              this.event.image,
              fit: BoxFit.cover,
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ExpandablePanel(
                  collapsed: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      event.description,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  expanded: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      event.description,
                      softWrap: true,
                    ),
                  ),
                  tapHeaderToExpand: true,
                  hasIcon: true,
                ),
              ),
            ),
            Divider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text("Line up", style: Theme.of(context).textTheme.title),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: event.artists.length,
                itemBuilder: (ctx, idx) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ArtistPage(event.artists[idx])));
                    },
                    child: Padding(
                      key: Key("$idx"),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Hero(
                            tag: event.artists[idx].avatar,
                            child: CircleAvatar(
                                radius: 32,
                                backgroundImage:
                                    NetworkImage(event.artists[idx].avatar)),
                          ),
                          Container(
                            height: 16,
                          ),
                          Text(event.artists[idx].name),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
