class EventsModel {
  EventsModel({
    this.id,
    this.eventName,
    this.eventImage,
    this.eventTags,
  });

  String? id;
  String? eventName;
  String? eventImage;
  List<String>? eventTags;
}
