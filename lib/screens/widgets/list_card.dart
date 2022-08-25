import 'package:flutter/material.dart';

import '../../models/events_model.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
    required this.event,
    required this.tags,
  }) : super(key: key);

  final EventsModel event;
  final String tags;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: ListTile(
        // tileColor: Colors.red,
        leading: Image.network("${event.eventImage}"),
        title: Text(
          tags,
          style: const TextStyle(
              color: Color(0xFF92475b),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
          ),
          child: Text(
            "${event.eventName}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
