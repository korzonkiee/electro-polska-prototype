import 'package:electro/events/widgets/event_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc.dart';
import 'data/events_repository.dart';

class EventsPage extends StatefulWidget {
  EventsPage({Key key}) : super(key: key);

  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  EventsBloc _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = EventsBloc(EventsRepository());
    _bloc.dispatch(FetchEvents());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsBloc, EventsState>(
      bloc: _bloc,
      builder: (context, state) {
        if (state is LoadingEventsState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is EventsPopulatedState) {
          return ListView.builder(
            itemCount: state.events.length,
            itemBuilder: (ctx, idx) {
              return EventCell(state.events[idx]);
            },
          );
        }

        return Container();
      },
    );
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}
