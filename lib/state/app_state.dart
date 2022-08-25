import 'package:flutter/cupertino.dart';
import '../models/events_model.dart';
import '../services/events_databse.dart';

class AppState extends ChangeNotifier {
  List<EventsModel> _eventsList = <EventsModel>[];
  List<EventsModel> _searchResults = [];
  bool isDataLoaded = false;

  void loadEventsList() async {
    List<EventsModel> eventsList = [];
    eventsList = await EventsDatabase().getEvents();
    setEventsList = eventsList;
    setIsDataLoaded = true;
  }

  void searchEvent(String query) {
    final List<String> queries = query.split(" ");
    List<EventsModel> searchedEvents = [];
    List<EventsModel> foundEvents = [];
    for (String q in queries) {
      searchedEvents = _eventsList.where((event) {
        final eventName = event.eventName!.toLowerCase();
        final inputQuery = q.toLowerCase();

        return eventName.contains(inputQuery);
      }).toList();

      for (EventsModel event in searchedEvents) {
        final foundIndex =
            foundEvents.indexWhere((element) => element.id == event.id);

        if (foundIndex == -1) {
          foundEvents.add(event);
        }
      }
    }

    setSearchResults = foundEvents;
  }

  List<EventsModel> get eventsList => _eventsList;
  List<EventsModel> get searchResults => _searchResults;

  set setEventsList(value) {
    _eventsList = value;
  }

  set setIsDataLoaded(value) {
    isDataLoaded = value;
    notifyListeners();
  }

  set setSearchResults(value) {
    _searchResults = value;
    notifyListeners();
  }
}
