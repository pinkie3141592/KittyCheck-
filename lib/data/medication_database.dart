import '../models/medication_info.dart';

final List<MedicationInfo> medicationDatabase = [

  MedicationInfo(
    id: "fluoxetine",
    name: "Fluoxetine",
    icon: "💊",
    generalUse: "SSRI antidepressant",
    description:
        "Fluoxetine is a selective serotonin reuptake inhibitor (SSRI) "
        "used to treat conditions such as depression, obsessive-compulsive "
        "disorder, panic disorder, and some eating disorders.",
    source: "Mayo Clinic",
  ),


  MedicationInfo(
    id: "alprazolam",
    name: "Alprazolam",
    icon: "💊",
    generalUse: "Anti-anxiety medication",
    description:
        "Alprazolam is a benzodiazepine medication used for the short-term "
        "management of anxiety and panic disorder. It works by affecting "
        "certain chemicals in the brain that help regulate anxiety.",
    source: "Mayo Clinic",
  ),


  MedicationInfo(
    id: "aripiprazole",
    name: "Aripiprazole",
    icon: "💊",
    generalUse: "Atypical antipsychotic medication",
    description:
        "Aripiprazole is an atypical antipsychotic medication used to treat "
        "conditions such as schizophrenia, bipolar disorder, and as an "
        "additional treatment for some cases of depression.",
    source: "Mayo Clinic",
  ),


  MedicationInfo(
    id: "propranolol",
    name: "Propranolol",
    icon: "💊",
    generalUse: "Beta blocker",
    description:
        "Propranolol is a beta blocker used for conditions such as high blood "
        "pressure, certain heart conditions, and symptoms such as physical "
        "effects of anxiety including rapid heartbeat and tremors.",
    source: "Mayo Clinic",
  ),

];