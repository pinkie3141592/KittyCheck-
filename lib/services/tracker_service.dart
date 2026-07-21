import '../models/daily_tracker.dart';
import '../models/habit.dart';

class TrackerService{

  List<DailyTracker> getTodayTrackers(){
    return[
      Habit(
        id: "shower",
        name: "Shower",
        icon: "🚿",
      ),

      Habit(
        id: "exercise",
        name: "Exercise",
        icon: "🏋️",
      ),

      Habit(
        id: "reading",
        name: "Read",
        icon: "📖",
      ),
    ];
  }
}