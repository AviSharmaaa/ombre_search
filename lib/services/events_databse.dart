import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ombre_search/models/events_model.dart';

class EventsDatabase {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<EventsModel>> getEvents() async {
    List<EventsModel> eventsList = <EventsModel>[];

    try {
      await _firestore.collection("eventsDB").get().then((snapshot) {
        for (var document in snapshot.docs) {
          eventsList.add(mapFirestoreDocToEvent(document));
        }
      });
    } catch (e) {
      rethrow;
    }

    return eventsList;
  }

  EventsModel mapFirestoreDocToEvent(DocumentSnapshot snapshot) {
    EventsModel event = EventsModel(id: snapshot.id);
    List<String>? eventTags = <String>[];
    dynamic data = snapshot.data();

    for (String tag in data["eventTags"]) {
      eventTags.add(tag);
    }

    event.eventName = data["eventName"];
    event.eventImage = data["eventImage"];
    event.eventTags = eventTags;

    return event;
  }
}
