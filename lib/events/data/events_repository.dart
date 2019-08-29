import 'event.dart';

class EventsRepository {
  Future<List<Event>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      Event("Sielarejw", "https://picsum.photos/id/101/600/200",
          DateTime.now().add(Duration(days: 5))),
      Event("Wasilrejw", "https://picsum.photos/id/102/600/200",
          DateTime.now().add(Duration(days: 10))),
    ];
  }
}
