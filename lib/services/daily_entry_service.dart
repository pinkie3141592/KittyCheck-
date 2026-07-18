import 'package:flutter/foundation.dart';

import '../models/daily_entry.dart';

class DailyEntryService{

  void saveEntry(DailyEntry entry){

    debugPrint("Saving entry for ${entry.date}",);

    debugPrint("Mood: ${entry.mood?.name}",);

    for(final tracker in entry.trackers){

      debugPrint(
        "${tracker.name}: ${tracker.completed}",
      );
    }
  }
  
}