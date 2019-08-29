import 'package:electro/events/data/event.dart';
import 'package:meta/meta.dart';

@immutable
abstract class EventsState {}

class LoadingEventsState extends EventsState {}

class EventsPopulatedState extends EventsState {
  final List<Event> events;

  EventsPopulatedState(this.events);
}
