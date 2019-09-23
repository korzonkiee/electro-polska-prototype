import 'package:electro/artists/data/artist.dart';
import 'package:flutter/material.dart';

class ArtistPage extends StatelessWidget {
  final Artist artist;

  const ArtistPage(this.artist, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(artist.name)),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: artist.avatar,
                  child: CircleAvatar(
                    radius: 54,
                    backgroundImage: NetworkImage(artist.avatar),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
