import 'package:flutter/material.dart';

import '../models/daily_tracker.dart';
import '../services/tracker_service.dart';
import '../widgets/dashboard/tracker_tile.dart';
import '../services/mood_service.dart';
import '../models/mood.dart';
import '../widgets/mood/mood_selector.dart';


class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}


class _HomePageState extends State<HomePage> {

  final TrackerService service = TrackerService();
  late List<DailyTracker> trackers;

  final MoodService moodService = MoodService();
  late List<Mood> moods;
  Mood? selectedMood;




  @override
  void initState() {
    super.initState();

    trackers = service.getTodayTrackers();
    moods = moodService.getMoods();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("KittyCheck 🐱"),
      ),

      body: Column(

        children: [

          const Text(
            "How are you feeling today?",
            style: TextStyle(fontSize: 20,)
          ),

          MoodSelector(

            moods: moods,
            selectedMood: selectedMood,

            onMoodSelected: (mood){
              
              setState((){

                selectedMood = mood;

              });
            },
          ),

          Expanded(

            child: ListView.builder(

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

          ),
        ],
      ),
      
    );
  }
}