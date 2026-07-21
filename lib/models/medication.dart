import 'package:flutter/material.dart';

import 'medication_info.dart';
import 'medication_unit.dart';
import 'reminder_mode.dart';

class Medication {

  final String id;

  final MedicationInfo info;

  final double dosage;

  final MedicationUnit unit;

  final ReminderMode reminderMode;

  final int? hoursBetweenDoses;

  final DateTime? lastTaken;

  final List<TimeOfDay> reminderTimes;


  bool takenToday;

  Medication({
    required this.id,
    required this.info,
    required this.dosage,
    required this.unit,
    required this.reminderMode,
    this.hoursBetweenDoses,
    this.lastTaken,
    this.reminderTimes = const [],
    this.takenToday = false,
  });

  void toggleTaken() {
    takenToday = !takenToday;
  }

}