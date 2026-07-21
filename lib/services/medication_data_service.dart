import '../models/medication_info.dart';
import '../data/medication_database.dart';


class MedicationDatabaseService {


  List<MedicationInfo> search(String query) {

    return medicationDatabase
        .where(
          (medication) =>
              medication.name
                  .toLowerCase()
                  .contains(query.toLowerCase()),
        )
        .toList();

  }


}