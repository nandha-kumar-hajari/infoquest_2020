class NtEventsadata {
  List<Ntevent> ntevents;

  NtEventsadata({this.ntevents});

  NtEventsadata.fromJson(Map<String, dynamic> json) {
    if (json['ntevents'] != null) {
      ntevents = new List<Ntevent>();
      json['speakers'].forEach((v) {
        ntevents.add(Ntevent.fromJson(v));
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

class Ntevent {
  String title;
  String description;
  String image;
  String coordinators;
  String prize;


  Ntevent(
      {this.title,
      this.description,
      this.image,
      this.coordinators,
      this.prize,
     });

      Ntevent.fromJson(Map<String, dynamic> json) {
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

List<Ntevent> ntevents = [
  Ntevent(
    image:
        "https://cdn1.iconfinder.com/data/icons/package-and-delivery-free/32/Package__Package_Delivery_Box_Parcel_Shipping-15-512.png",
    title: "What's in the Box ",
    description: "It is a game where you are challenged to guess what object is in the box,in 10 seconds",
    coordinators: "Soumya,Praneetha,Rama,Sai Priya",
    prize: "Double the amount you paid",
  ),

   Ntevent(
    image:
        "https://cdn4.iconfinder.com/data/icons/SUNNYDAY/education_icons/png/400/university.png",
    title: "Scavanger Hunt",
    description: "Find the objects placed around the campus from the clues given ",
    coordinators: "Ishika,Shruthi,Akhila,Vishishta",
    prize: "Double the amount you paid",
    
  ),
   Ntevent(
    image:
        "https://cdn1.iconfinder.com/data/icons/healthy-life-flaticon/64/sport-ball-summer-racket-sports_and_competition-table_tennis-ping_pong-equipment-sports-512.png",
    title: "Tripple Dribble",
    description: "Choose any random game you want.Ping Pong,Tower Cups or Marie Gold. ",
    coordinators: "Pranay Krishna , Manasa & Yashwanth",
    prize: "Double the amount you paid",
    
  ),
     Ntevent(
    image:
        "https://cdn2.iconfinder.com/data/icons/christmas-hand-drawn-scribbles-icons/512/85-512.png",
    title: "Balloon Pyramid",
    description: "Form the pyramid with the help of balloons using cups",
    coordinators: "Vinod,Nuthan,Pravallika",
    prize: "Double the amount you paid",
    
  ), 
   Ntevent(
    image:
        "https://cdn2.iconfinder.com/data/icons/iconslandsport/PNG/256x256/Motorsport_Helmet.png",
    title: "Game 'n' Win",
    description: "A 1V1 gaming tournament in which a group of 4 or 8 people can play games like WWE,Forza Motorsport",
    coordinators: "Vinod,Nuthan,Pravallika",
    prize: "Prize: 100/- and 80/- (Team of 4) 150/- and 100/- (Team of 8)",
    
  ), 
    Ntevent(
    image:
        "https://cdn0.iconfinder.com/data/icons/free-e-commerce-linear/1024/heart-shirt-512.png",
    title: "Hand Print Memory",
    description: "Make Memories with hand prints on T-Shirts",
    coordinators: "Sreeja & Dattu Raj Goud",
    prize: "No Money,just memories",
    
  ),   Ntevent(
    image:
        "https://cdn0.iconfinder.com/data/icons/map-location-solid-style/91/Map_-_Location_Solid_Style_15-512.png",
    title: "Hand & Foot Sensory Path",
    description: "An Obstacle game which puts your senses to test !",
    coordinators: "Sujatha & Indu Reddy",
    prize: "Double the amount you paid",
    
  ),
     Ntevent(
    image:
        "https://cdn4.iconfinder.com/data/icons/common-toolbar/36/Paste-2-512.png",
    title: "Task Master",
    description: "Complete the series of given tasks",
    coordinators: "Umakanth,Babu Rao & Ashok",
    prize: "Double the amount you paid",
    
  ),
     Ntevent(
    image:
        "https://cdn4.iconfinder.com/data/icons/famous-characters-add-on-vol-1-flat/48/Famous_Character_-_Add_On_1-14-512.png",
    title: "Marvel Hunt",
    description: "Answer the given Marvel Universe Quiz and gain the clues to win",
    coordinators: "Dhanush,Nikhil & Sreeman",
    prize: "Two Months Netflix Subscription",
    
  ),
       Ntevent(
    image:
        "https://cdn2.iconfinder.com/data/icons/circle-icons-1/64/camera-512.png",
    title: "College Photography",
    description: "Click the best pictures from college surroundings",
    coordinators: "Ajay & Akhil",
    prize: "Double the amount you paid",
    
  ),
   Ntevent(
    image:
        "https://cdn3.iconfinder.com/data/icons/letters-and-numbers-1/32/number_123_1-512.png",
    title: "Tambola",
    description: "A Fun game with numbers.Only your luck can make you win!",
    coordinators: "Surendar & Saikiran",
    prize: "Double the amount you paid",
    
  ),
  Ntevent(
    image:
        "https://cdn0.iconfinder.com/data/icons/internet-connection-1/100/balls-512.png",
    title: "Fill the Colour",
    description: "Collect and seperate the coloured balls within 60 seconds",
    coordinators: "Jahnavi",
    prize: "Prize:30/-",
  ),
 Ntevent(
    image:
        "https://cdn3.iconfinder.com/data/icons/free-3d-glossy-interface-icon-set/64/Minus.png",
    title: "The Brick Challenge",
    description: "Hold the wet brick as long as you can .Winner will be the one who holds it for maximum time",
    coordinators: "Sahithi",
    prize: "Prize:100/-",
  ),
   Ntevent(
    image:
        "https://cdn2.iconfinder.com/data/icons/summer-flat-11/272/summer-cold-water-drink-ice-cube-hydrate-512.png",
    title: "The Ice-Coin Challenge",
    description: "Collect 15 Coins from the Ice Water in 60 seconds",
    coordinators: "Sahithi",
    prize: "Prize:50/-",
  ),
   Ntevent(
    image:
        "https://cdn3.iconfinder.com/data/icons/sport-free/24/Sport__Sport_Jump_Rope_Fitness_Health-512.png",
    title: "Tug of war",
    description: "Collect 15 Coins from the Ice Water in 60 seconds",
    coordinators: "Bhargav",
    prize: "Prize:150/-",
  ),
   Ntevent(
    image:
        "https://cdn2.iconfinder.com/data/icons/circle-icons-1/64/video-512.png",
    title: "All about Cinema & Sports",
    description: "Select category and answer the quiz",
    coordinators: "Sai Kumar & Jayanth",
    prize: "Prize:60/- and 40/-",
  ),
   Ntevent(
    image:
        "https://cdn2.iconfinder.com/data/icons/christmas-2220/64/turkey-food-chicken-roast-christmas-512.png",
    title: "PUBG",
    description: "Winner,Winner Chicken Dinner ! (Only On MObile)",
    coordinators: "Sai Teja",
    prize: "Prize:150/- , Per kill : 15",
  ),
   Ntevent(
    image:
        "https://cdn0.iconfinder.com/data/icons/sports-android-l-lollipop-icon-pack/24/hand_biceps-512.png",
    title: "Sweat and Struggle",
    description: "Play and win Arm Wrestling,Push-UPs or Plank Game",
    coordinators: "Rahul",
    prize: "Prize:Decided on the spot",
  ),
  Ntevent(
    image:
        "https://cdn1.iconfinder.com/data/icons/business-and-mangament/24/business_and_management_14-512.png",
    title: "The Pot challenges",
    description: "Perform a box of challenges",
    coordinators: "Sahitya",
    prize: "Prize:30/-",
  ),
Ntevent(
    image:
        "https://cdn3.iconfinder.com/data/icons/geek-3/24/Tic_Tac_Toe-512.png",
    title: "Retro",
    description: "Play all Retro games like Tic Tac Toe,Snakes and Ladder,Cards etc",
    coordinators: "Lallu Prasad,Sheshi Kanth,Harish,Ganesh",
    prize: "Prize:Decided on the spot",
  ),
  Ntevent(
    image:
        "https://cdn4.iconfinder.com/data/icons/gradient-ui-1/512/games-512.png",
    title: "LAN Gaming",
    description: "Play racing games NFSMW,BLUR",
    coordinators: "Rahul",
    prize: "Prize:NFS 120/- and BLUR 160/-",
  ),
   Ntevent(
    image:
        "https://cdn0.iconfinder.com/data/icons/internet-2020/1080/tiktokgradient-512.png",
    title: "Tik Tok Celeb",
    description: "Submit best Tik Tok Video you have done by 18-03-2020 12PM",
    coordinators: "Shiva Kumar,Inquira Sriram,Lallu Prasad",
    prize: "Prize:Decided Soon",
  ),
   Ntevent(
    image:
        "https://cdn3.iconfinder.com/data/icons/forall/1062/puzzle-512.png",
    title: "Puzzle",
    description: "Solve the jumbled photo puzzle",
    coordinators: "Preethi",
    prize: "Prize:50/-",
  ),
   Ntevent(
    image:
        "https://cdn3.iconfinder.com/data/icons/fantasy-and-role-play-game-adventure-quest/512/Adventure_Map-512.png",
    title: "Treasure Hunt",
    description: "Find all the clues ASAP and reach final destination by specified time",
    coordinators: "Sahith Kumar",
    prize: "Prize:1000/-",
  ),
Ntevent(
    image:
        "https://cdn3.iconfinder.com/data/icons/geek-3/24/Maze_game_retro-512.png",
    title: "Maze Runner",
    description: "Find all the clues ASAP and reach final destination by specified time",
    coordinators: "Neeraj",
    prize: "Prize:1000/-",
  ),
  Ntevent(
    image:
        "https://cdn3.iconfinder.com/data/icons/geek-3/24/Dragon_Ball_movie_game-512.png",
    title: "Hit & Win",
    description: "Throw balls at tublars and make them fall",
    coordinators: "Rahul",
    prize: "Prize:Based on tubes fallen",
  ),


];