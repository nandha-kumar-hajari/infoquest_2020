class TeamData {
  List<Team> team;

  TeamData({this.team});

  TeamData.fromJson(Map<String, dynamic> json) {
    if (json['ntevents'] != null) {
      team = new List<Team>();
      json['speakers'].forEach((v) {
        team.add(Team.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.team != null) {
      data['speakers'] = this.team.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Team {
  String title;
  String description;
  String image;

  Team({
    this.title,
    this.description,
    this.image,
  });

  Team.fromJson(Map<String, dynamic> json) {
    title = json['event_title'];
    description = json['event_desc'];
    image = json['event_image'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['evnt_title'] = this.title;
    data['event_desc'] = this.description;
    data['event_image'] = this.image;

    return data;
  }
}

List<Team> team = [
  Team(
    image: "assets/icons/cse.png",
    title: "            CSE ",
    description: '''
                Kevin
                Nandhu
                Balu
                Vishnu
                Aakriti
                Amani
                Atharva
                Pavan
    ''',
  ),
  Team(
    image: "assets/icons/ece.png",
    title: "            ECE",
    description: '''
                Jeshmitha
                Nitish
                Sai Babu
                Nandu
                Sindhu
                ''',
  ),
  Team(
    image: "assets/icons/it.png",
    title: "            IT",
    description: '''
                Tejesh
                Narayana  
    ''',
  ),
  Team(
    image: "assets/icons/eee.png",
    title: "            EEE",
    description: '''
                Vamshi
                Chaitanya
                Preetham
                Sai Teja    
                ''',
  ),
  Team(
    image: "assets/icons/civil.png",
    title: "           Civil",
    description:
        '''
                Shrikar
                Tarun
                Tarun Reddy
                Sai Chand   
                Vineeth 
                ''',
  ),
  Team(
    image: "assets/icons/mech.png",
    title: "            Mechanical",
    description: '''
                Vivek
                Sandeep    
                Divakar
                Surender
                ''',
  ),
  Team(
    image: "assets/icons/ecm.png",
    title: "            ECM",
    description: '''
                Goutham
                Lakshmi Kanth    
                Phani Kiran
                ''',
  ),
];
