import 'daily_tracker.dart';
import 'mood.dart';

class DailyEntry {

  final DateTime date;

  Mood? mood;

  final List<DailyTracker> trackers;

  DailyEntry({

    required this.date,
    this.mood,
    required this.trackers,
  });

  bool isComplete(){
    return mood != null &&
      trackers.every((tracker) => tracker.completed);
  }

  String get key {

    return "${date.year}-"
       "${date.month.toString().padLeft(2, '0')}-"
       "${date.day.toString().padLeft(2, '0')}";

  }


}