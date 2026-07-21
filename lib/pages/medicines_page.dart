import 'package:flutter/material.dart';

import '../models/medication.dart';
import 'add_medicine_page.dart';

class MedicinesPage extends StatefulWidget{

  const MedicinesPage({super.key});

  @override
  State<MedicinesPage> createState() => _MedicinesPageState(); 


}


class _MedicinesPageState extends State<MedicinesPage> {

  final List<Medication> medicines = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(
        title: const Text(
          "Medicines",
        ),
      ),
      

      body: medicines.isEmpty

      ? const Center(

          child: Text(
            "No medicines added yet",
            style: TextStyle(
              fontSize: 18,
            ),
          ),

        )


      : ListView.builder(

          itemCount: medicines.length,


          itemBuilder: (context, index) {


            final medicine = medicines[index];


            return ListTile(

              leading: Text(
                medicine.info.icon,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),


              title: Text(
                medicine.info.name,
              ),


              subtitle: Text(
                "${medicine.dosage} ${medicine.unit.name}",
              ),


              trailing: Checkbox(

                value: medicine.takenToday,


                onChanged: (value) {


                  setState(() {

                    medicine.toggleTaken();

                  });


                },

              ),

            );


          },

        ),

      floatingActionButton: FloatingActionButton(

      onPressed: () async {


        final Medication? medication = await Navigator.push(

          context,

          MaterialPageRoute(

            builder: (context) =>
                const AddMedicinePage(),

          ),

        );


        if(medication != null) {


          setState(() {

            medicines.add(medication);

          });


        }


      },

        child: const Icon(
          Icons.add,
        ),

      ),
    );

  }
}