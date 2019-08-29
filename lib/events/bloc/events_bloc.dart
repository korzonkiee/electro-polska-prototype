import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:electro/events/data/events_repository.dart';
import './bloc.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final EventsRepository _eventsRepository;

  EventsBloc(this._eventsRepository);

  @override
  EventsState get initialState => LoadingEventsState();

  @override
  Stream<EventsState> mapEventToState(
    EventsEvent event,
  ) async* {
    if (event is FetchEvents) {
      yield LoadingEventsState();
      var events = await _eventsRepository.getEvents();
      yield EventsPopulatedState(events);
    }
  }
}
