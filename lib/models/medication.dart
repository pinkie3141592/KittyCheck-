import 'daily_tracker.dart';

class Medication extends DailyTracker{

  final int dosage;
  final String measure;

    Medication({
      required super.id,
      required super.name,
      required super.icon,
      required this.dosage,
      required this.measure,
    });

}