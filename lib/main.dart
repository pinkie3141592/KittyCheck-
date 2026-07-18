import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kittycheck/app.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  runApp(const KittyCheck());

  await Hive.openBox("dailyEntries");



}