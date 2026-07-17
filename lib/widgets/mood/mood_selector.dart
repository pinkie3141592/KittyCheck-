import 'package:flutter/material.dart';
import '../../models/mood.dart';

class MoodSelector extends StatelessWidget{

  final List<Mood> moods;
  final Mood? selectedMood;
  final Function(Mood) onMoodSelected;


  const MoodSelector({

    super.key,
    required this.moods,
    required this.selectedMood,
    required this.onMoodSelected,
  });

  @override
  Widget build (BuildContext context){

    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,

      children: moods.map((mood){
        return GestureDetector(

          onTap: (){
            onMoodSelected(mood);
          },

          child: Column(
            children: [
              Text(
                mood.icon,
                style: const TextStyle( 
                  fontSize : 40,
                ),
              ),    

              Text(
                mood.name,
              ),
            ],
          ),


        );

      }).toList(),


    );

  }



}