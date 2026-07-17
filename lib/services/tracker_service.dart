import '../models/daily_tracker.dart';
import '../models/habit.dart';
import '../models/medication.dart';

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

      Medication(
        id: "fluoxetine",
        name: "Fluoxetine",
        icon: "💊",
        dosage: 60,
        measure: "mg",
      ),

      Habit(
        id: "reading",
        name: "Read",
        icon: "📖",
      ),
    ];
  }
}