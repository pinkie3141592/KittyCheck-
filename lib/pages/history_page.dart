import 'package:flutter/material.dart';
import '../widgets/history/daily_entry_card.dart';
import '../models/daily_entry.dart';
import '../services/daily_entry_service.dart';


class HistoryPage extends StatefulWidget {

  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();

}


class _HistoryPageState extends State<HistoryPage> {

  final DailyEntryService service = DailyEntryService();

  late List<DailyEntry> entries;


  @override
  void initState() {

    super.initState();

    entries = service.getAllEntries();

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("History"),
      ),


      body: ListView.builder(

        itemCount: entries.length,

        itemBuilder: (context, index) {

          final entry = entries[index];


          return DailyEntryCard(
            entry: entry,
          );

        },

      ),

    );

  }

}