import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kittycheck/app.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  await Hive.openBox("dailyEntries");

  runApp(const KittyCheck());

}