class ExEventsdata {
  List<ExEvent> ntevents;

  ExEventsdata({this.ntevents});

  ExEventsdata.fromJson(Map<String, dynamic> json) {
    if (json['ntevents'] != null) {
      ntevents = new List<ExEvent>();
      json['speakers'].forEach((v) {
        ntevents.add(ExEvent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ntevents != null) {
      data['speakers'] = this.ntevents.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ExEvent {
  String title;
  String description;
  String image;
  String coordinators;
  String prize;

  ExEvent({
    this.title,
    this.description,
    this.image,
    this.coordinators,
    this.prize,
  });

  ExEvent.fromJson(Map<String, dynamic> json) {
    title = json['event_title'];
    description = json['event_desc'];
    image = json['event_image'];
    coordinators = json['event_coordinators'];
    prize = json['prize'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['evnt_title'] = this.title;
    data['event_desc'] = this.description;
    data['event_image'] = this.image;
    data['event_coodinators'] = this.coordinators;
    data['prize'] = this.prize;
    return data;
  }
}

List<ExEvent> exevents = [
  ExEvent(
    image: "https://cdn1.iconfinder.com/data/icons/space-flat-galaxy-radio/512/robot-512.png",
    title: "Robo Fiesta",
    description: "Enjoy exiting robo games like battlefield,All terrain etc.,",
    
  ),
  ExEvent(
    image: "https://cdn1.iconfinder.com/data/icons/engineering-or-engineer-solid-1/64/construction_builder_construction_engineer_surveyor_engineer_theodolite_tool_tool_engineer_engineering_survey-512.png",
    title: "Quick survey",
    description: "Find specified Data of given area in given time",
    
  ),
  ExEvent(
    image: "https://cdn2.iconfinder.com/data/icons/circle-icons-1/64/art-512.png",
    title: "Makers Art Explosion",
    description: "Take part in painting competition ,Art exhibition and win exiting prices",
    
  ),
  ExEvent(
    image: "https://cdn2.iconfinder.com/data/icons/property-agent-real-estate/367/property-agent-011-512.png",
    title: "Project Expo",
    description: "Let the world know that uou are an Einstein, Cuz Innovation starts with you.",
    
  ),
  ExEvent(
    image: "https://cdn0.iconfinder.com/data/icons/IS_credit-cards-full_final/512/laser.png",
    title: "Lazer Castle",
    description: "Sneak through the Lasers and claim your prize !",

  ),
];
