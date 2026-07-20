import 'package:flutter/material.dart';

import '../../models/daily_entry.dart';


class DailyEntryCard extends StatelessWidget {

  final DailyEntry entry;


  const DailyEntryCard({
    super.key,
    required this.entry,
  });


  @override
  Widget build(BuildContext context) {

    return Card(

      margin: const EdgeInsets.all(10),

      child: Padding(

        padding: const EdgeInsets.all(16),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(

              "${entry.date.day}/${entry.date.month}/${entry.date.year}",

              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),

            ),


            const SizedBox(height: 10),


            Text(
              "Mood: ${entry.mood?.icon ?? "❓"} ${entry.mood?.name ?? "No mood"}",
              style: const TextStyle(
                fontSize: 16,
              ),
            ),


            const SizedBox(height: 10),


            const Text(
              "Trackers:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),


            ...entry.trackers.map((tracker) {

              return Row(

                children: [

                  Text(tracker.icon),

                  const SizedBox(width: 8),


                  Text(tracker.name),


                  const Spacer(),


                  Icon(
                    tracker.completed
                        ? Icons.check_circle
                        : Icons.cancel,

                  ),

                ],

              );

            }),

          ],

        ),

      ),

    );

  }

}