import '../models/mood.dart';

class MoodService {

  List<Mood> getMoods(){

    return [

      Mood(
        name: "Happy",
        icon: "😸",
      ),

      Mood(
        name: "Okay",
        icon: "😐",
      ),

      Mood(
        name: "Sad",
        icon: "😿",
      ),

      Mood(
        name: "Angry",
        icon: "😾",
      ),

    ];


  }


}