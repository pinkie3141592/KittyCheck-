import '../models/mood.dart';

class MoodService {

  List<Mood> getMoods(){

    return [

      Mood(
        id: "happy",
        name: "Happy",
        icon: "😸",
        selectedIcon: "😻",
      ),


      Mood(
        id: "okay",
        name: "Okay",
        icon: "😐",
        selectedIcon: "🙂",
      ),


      Mood(
        id: "sad",
        name: "Sad",
        icon: "😿",
        selectedIcon: "😢",
      ),


      Mood(
        id: "angry",
        name: "Angry",
        icon: "😾",
        selectedIcon: "😡",
      ),

    ];


  }


}