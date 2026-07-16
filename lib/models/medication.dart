import 'daily_tracker.dart';

class Medication extends DailyTracker{

  final int dosage;
  final String measure;

    Medication({
      required this.id,
      required this.name,
      required this.icon,
      required this.dosage,
      required this.measure,
    });

}