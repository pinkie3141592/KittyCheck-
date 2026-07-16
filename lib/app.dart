import 'package:flutter/material.dart';
import 'pages/home_page.dart';

class LifeStyleTrackerApp extends StatelessWidget{
    const LifeStyleTrackerApp({super.key});

    @override
    Widget build(BuildContext context){
        return MaterialApp(
            title: 'KittenCheck!!',

            debugShowCheckedModeBanner: false,

            theme: ThemeData(
                colorSchemeSeed: Colors.pink,
                useMaterial3: true,
            ),
        
            home: const HomePage(),
        );
    }
}