import 'package:flutter/foundation.dart';

import 'package:hive_flutter/hive_flutter.dart';

import '../models/daily_entry.dart';

class DailyEntryService{

  final Box box = Hive.box("dailyEntries");

  void saveEntry(DailyEntry entry){

    box.put(
      entry.key,
      entry.toMap(),
    );

    debugPrint("Entry ${entry.key} saved!");

  }

  List<DailyEntry> getAllEntries(){

    return box.values
      .map((entry) => DailyEntry.fromMap(
          Map<String, dynamic>.from(entry),
      ))
    .toList();
  }

  
}