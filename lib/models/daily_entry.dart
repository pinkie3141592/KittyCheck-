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


  Map<String, dynamic> toMap() {

    return {

      'date': date.toIso8601String(),

      'mood': mood?.toMap(),

      'trackers': trackers
          .map((tracker) => tracker.toMap())
          .toList(),

    };

  }


  factory DailyEntry.fromMap(Map<String, dynamic> map) {

    return DailyEntry(

      date: DateTime.parse(map['date']),

      mood: map['mood'] != null
          ? Mood.fromMap(
              Map<String, dynamic>.from(map['mood']),
              )
          : null,

      trackers: (map['trackers'] as List)
          .map((tracker) =>
              DailyTracker.fromMap(
                Map<String, dynamic>.from(tracker),
              ),
          )
          .toList(),

    );

  }


}