import 'package:flutter/material.dart';

import '../models/daily_tracker.dart';
import '../services/tracker_service.dart';
import '../widgets/dashboard/tracker_tile.dart';


class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}


class _HomePageState extends State<HomePage> {

  final TrackerService service = TrackerService();

  late List<DailyTracker> trackers;


  @override
  void initState() {
    super.initState();

    trackers = service.getTodayTrackers();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("KittyCheck 🐱"),
      ),

      body: ListView.builder(

        itemCount: trackers.length,

        itemBuilder: (context, index) {

          return TrackerTile(
            tracker: trackers[index],
            onTap: (){
              setState((){
                trackers[index].toggleCompleted();
              });
            },
          );

        },
      ),
    );
  }
}