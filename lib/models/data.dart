// import 'package:infoquest/models/category_model.dart';
import '../models/branch_model.dart';

import '../models/task_model.dart';

const ALLBRANCHES = const [

  BranchModel(id: 'b1', title: 'CSE', image: 'assets/icons/cse.png'),
  BranchModel(id: 'b2', title: 'ECE', image: 'assets/icons/ece.png'),
  BranchModel(id: 'b3', title: 'IT', image: 'assets/icons/it.png'),
  BranchModel(id: 'b4', title: 'MECH', image: 'assets/icons/mech.png'),
  BranchModel(id: 'b5', title: 'EEE', image: 'assets/icons/eee.png'),
  BranchModel(id: 'b6', title: 'CIVIL', image: 'assets/icons/civil.png'),
  BranchModel(id: 'b7', title: 'ECM', image: 'assets/icons/ecm.png'),
];

const TASKS = const [
  TaskModel('t1', 'Code Investigation', 'https://cdn4.iconfinder.com/data/icons/crime-and-security-24/64/24-512.png', ['b1'],'Crack the puzzle from the given program and unveil that Sherlock in you.',' Coordinators:Aniketh,Hitesh,Nithin',"Prize:Double the amount you paid"),
  TaskModel('t1', 'Coder\'s Guess  ', 'https://www.freevector.com/uploads/vector/preview/15637/FreeVector-Man-With-Question-Mark.jpg', ['b1'],'Put your guessing skills to work and solve the given puzzles','Coordinators:Srinidhi,Harshitha,Meghana',"Prize:Double the amount you paid"),


   TaskModel('t1', 'Brain Hunker', 'https://cdn3.iconfinder.com/data/icons/brain-games/1042/Puzzle.png', ['b2'],'Find the answer from given puzzle table.','Coordinators:Deekshitha',"Prize:Double the amount you paid"),
  TaskModel('t1', 'The Circuit Way', 'https://cdn2.iconfinder.com/data/icons/design-thinking-gradient-ideate-the-solution/512/processor-512.png', ['b2'],'Reach the destination without touching the coil','Coordinators:Rinku',"Prize:50/-"),

  
   TaskModel('t1', 'Code Mania', 'https://cdn0.iconfinder.com/data/icons/small-n-flat/24/678123-file-code-512.png', ['b3'],'Pick the right code for output in one round and Write the code in other round with given constraints','Coordinators:Navya,Karunakar,Keerthi,Niveshitha,Susheeel','Prize:250/-'),
  TaskModel('t1', 'Code Puzzle','https://cdn2.iconfinder.com/data/icons/free-simple-line-mix/48/40-Web_Development-512.png',['b3'],'Complete the parts of missing code and execute code to get right output','Coordinators:Shivam,Sandeep,Ashwitha,Vinod,Praneetha',"Prize: 150"),
  TaskModel('t1', 'Hangman', 'https://cdn2.iconfinder.com/data/icons/picol-vector/32/text-512.png', ['b3'],'A word with missing blocks is diaplayed on the screen. Guess the word within the given chances.','Coordinators:Shivam,Vamshi,Ahswitha',"Prize: 150"),


   TaskModel('t1', 'Prototype Modelling', 'https://cdn1.iconfinder.com/data/icons/software-engineering-and-video-gaming/512/457_Draft_engineering_process_prototype_prototyping_Advertising_Promo_Creative_Process-512.png', ['b4'],'Showcase your chasis prototype made with given material','Coordinators:Ramu & Gaurav',"Prize : 200/-"),
  TaskModel('t1', 'Aero Design Challenge', 'https://cdn0.iconfinder.com/data/icons/summer_holiday_icons/256/aeroplane.png', ['b4'],'Build an aeroplane model with given materials','Coordinators:Diwakar & Prathyusha',"Prize: 100/-"),
  TaskModel('t1', 'Paper Presentation', 'https://cdn2.iconfinder.com/data/icons/circle-icons-1/64/compose-512.png', ['b4'],'Give a paper presentation on a relevant technical topic','Coordinators:Vivek & Shourika',"Prize : 50/-"),
  TaskModel('t1', 'Mechanical Quiz', 'https://cdn3.iconfinder.com/data/icons/brain-games/1042/Quiz-Games.png', ['b4'],'Guess all the components of given Machine','Coordinators:Phanindra & Vineeth',"Prize: 50/-"),


   TaskModel('t1', 'Don\'t Freak Out', 'https://cdn1.iconfinder.com/data/icons/ui-navigation-1/152/alert-512.png', ['b5'],'Return to a safe point by crossing all electrical hazards','Coordinators:Priyank',"Prize: 100"),
  TaskModel('t1', 'Spot the wave', 'https://cdn0.iconfinder.com/data/icons/fatcow/32/draw_wave.png', ['b5'],'Determine wave magnitude at a given time','Coordinators:Hasini & Lavanya',"Double the amount you paid"),
  TaskModel('t1', 'Circuit Debugging', 'https://cdn2.iconfinder.com/data/icons/round-varieties/60/Rounded_-_High_Ultra_Colour10_-_Circuit_Board-512.png', ['b5'],'Complete given incomplete circuit network','Coordinators:Swami & Nikhil',"50 and 80 /- based on persons"),
  TaskModel('t1', 'Defuse The Bomb', 'https://cdn2.iconfinder.com/data/icons/circle-icons-1/64/bomb-512.png', ['b5'],'Participant should find the right wire from the fiven circuit and diffuse a Bulb(Just like you would diffuse a bomb)','Coordinators:Swami & Nikhil',"50 and 80 /- based on persons"),

  

   TaskModel('t1', 'Model Expo', 'https://cdn3.iconfinder.com/data/icons/the-elegant-set/96/floor-plan.png', ['b6'],'Present a model related to Civil Engineering','Coordinators:Aditya',"1st Prize: 1000/- 2nd Prize : 500/-"),
  TaskModel('t1', 'Paper & Poster Presentation', 'https://cdn0.iconfinder.com/data/icons/kameleon-free-pack-rounded/110/Mind-Map-Paper-512.png', ['b6'],'Present any Civil Engg. topic in a paper or poster','Coordinators:Sahithi',"1st Prize: 500/- 2nd Prize : 300/-"),
  TaskModel('t1', 'PPT Presentation', 'https://cdn3.iconfinder.com/data/icons/file-extension-names-vol-5-3/512/42-512.png', ['b6'],'Explain a brief Civil Engg topic with PPT','Coordinators: Mani Teja',"1st Prize: 500/- 2nd Prize : 300/"),
  TaskModel('t1', 'Quick Survey', 'https://cdn1.iconfinder.com/data/icons/adventure-outline-1/64/Adventure-Line-16-512.png', ['b6'],'Survey the given area with given tools.Team of 3 can participate.','Coordinators: Tarun Reddy',"Prize : 500"),

   TaskModel('t1', 'Laser Castle', 'https://cdn0.iconfinder.com/data/icons/IS_credit-cards-full_final/512/laser.png', ['b7'],'Start from one end of the room,participany has to reach the other end without touching the Lasers','Coordinators:Sampath,Sunil,Suhas,Vinay,Vikas,Shiva,Vamshi',"Double the amount you paid"),
  TaskModel('t1', 'Beat The Buzz', 'https://cdn2.iconfinder.com/data/icons/nasty/60/apocolypse_nuclear_explosion_atomic_bomb-512.png', ['b7'],'Two players must simuntaneously reach the destination crossing the hurdle of Landmines within 4 minutes','Coordinators:Malavika,Sahithi,Lakshmi Kanth,Goutham,Amit,Shiva Ram,Karthik,Raghuveer,Sahithi',"Prize: 100/-"),
  TaskModel('t1', 'Mind Hunt', 'https://cdn0.iconfinder.com/data/icons/octicons/1024/circuit-board-512.png', ['b7'],'Assemble the electric components using Breadboards,resistors,LED\'s,Resistors','Coordinators:Akshay,Vamshi,Chandra Shekar,Sudheer',"Prize:Depends on the timing"),

];

