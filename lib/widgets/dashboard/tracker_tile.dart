import 'package:flutter/material.dart';
import 'package:kittycheck/models/daily_tracker.dart';
class TrackerTile extends StatelessWidget{

  final DailyTracker tracker;
  final VoidCallback onTap;

  const TrackerTile({
    super.key,
    required this.tracker,
    required this.onTap,
  });

  @override
  Widget build (BuildContext context){

    return CheckboxListTile(
      title: Text(tracker.name),
      
      secondary: Text(
        tracker.icon,
        style: const TextStyle(
          fontSize: 30,
        ),
      ),
      
      value: tracker.completed,
      onChanged: (value){
        onTap();
      },
    
    );
  }

}