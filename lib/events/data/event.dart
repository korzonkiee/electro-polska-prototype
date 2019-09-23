import 'package:electro/artists/data/artist.dart';

class Event {
  final String title;
  final String description;
  final String image;
  final DateTime date;
  final List<Artist> artists;

  Event(this.title, this.description, this.image, this.date, this.artists);
}
