import 'package:flutter/material.dart';

import '../models/medication.dart';
import '../models/medication_info.dart';
import '../models/medication_unit.dart';

import '../data/medication_database.dart';
import '../models/reminder_mode.dart';



class AddMedicinePage extends StatefulWidget {

  const AddMedicinePage({super.key});

  @override
  State<AddMedicinePage> createState() => _AddMedicinePageState();

}



class _AddMedicinePageState extends State<AddMedicinePage> {


  final dosageController = TextEditingController();

  MedicationInfo? selectedMedication;

  MedicationUnit selectedUnit = MedicationUnit.mg;

  ReminderMode selectedReminderMode = ReminderMode.automatic;

  final intervalController = TextEditingController();

  List<TimeOfDay> reminderTimes = [];

  @override
  void dispose() {

    dosageController.dispose();

    intervalController.dispose();

    super.dispose();

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text("Add Medicine"),

      ),



      body: Padding(

        padding: const EdgeInsets.all(16),


        child: Column(

          children: [


            DropdownButton<MedicationInfo>(

              hint: const Text("Select medicine"),


              value: selectedMedication,


              items: medicationDatabase.map((medicine) {


                return DropdownMenuItem<MedicationInfo>(

                  value: medicine,


                  child: Text(

                    "${medicine.icon} ${medicine.name}",

                  ),

                );


              }).toList(),



              onChanged: (medicine) {


                setState(() {

                  selectedMedication = medicine;

                });


              },

            ),

            const SizedBox(height: 16),

            TextField(

              controller: dosageController,


              keyboardType: TextInputType.number,


              decoration: const InputDecoration(

                labelText: "Dosage",

              ),

            ),

            const SizedBox(height: 16),

            DropdownButton<MedicationUnit>(

              value: selectedUnit,

              items: MedicationUnit.values.map((unit) {

                return DropdownMenuItem<MedicationUnit>(

                  value: unit,

                  child: Text(
                    unit.name,
                  ),

                );

              }).toList(),


              onChanged: (unit) {

                if(unit != null){

                  setState(() {

                    selectedUnit = unit;

                  });

                }

              },

            ),

            const SizedBox(height: 16),

            DropdownButton<ReminderMode>(

              value: selectedReminderMode,

              items: ReminderMode.values.map((mode) {

                return DropdownMenuItem<ReminderMode>(

                  value: mode,

                  child: Text(mode.name),

                );

              }).toList(),

              onChanged: (mode) {

                if (mode != null) {

                  setState(() {

                    selectedReminderMode = mode;

                  });

                }

              },

            ),

            const SizedBox(height: 20),

            
            if (selectedReminderMode == ReminderMode.manual)

              Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  ElevatedButton.icon(

                    icon: const Icon(Icons.access_time),

                    label: const Text("Add reminder time"),

                    onPressed: () async {

                      final TimeOfDay? picked = await showTimePicker(

                        context: context,

                        initialTime: TimeOfDay.now(),

                      );

                      if (picked != null) {

                        setState(() {

                          reminderTimes.add(picked);

                        });

                      }

                    },

                  ),

                  const SizedBox(height: 16),

                  ...reminderTimes.map((time) {

                    return ListTile(

                      leading: const Icon(Icons.schedule),

                      title: Text(time.format(context)),

                    );

                  }),

                ],

              ),

            const SizedBox(height: 20),

            ElevatedButton(


              onPressed: () {


                if(selectedMedication == null ||
                   dosageController.text.isEmpty) {

                  return;

                }



                final medication = Medication(

                  id: DateTime.now().toString(),

                  info: selectedMedication!,

                  dosage: double.parse(
                    dosageController.text,
                  ),

                  unit: selectedUnit,

                  reminderMode: selectedReminderMode,

                  hoursBetweenDoses:
                      selectedReminderMode == ReminderMode.automatic
                          ? int.tryParse(intervalController.text)
                          : null,


                  reminderTimes:
                      selectedReminderMode == ReminderMode.manual
                          ? reminderTimes
                          : [],

                );



                Navigator.pop(

                  context,

                  medication,

                );


              },


              child: const Text("Save"),


            ),


          ],


        ),

      ),

    );

  }

}