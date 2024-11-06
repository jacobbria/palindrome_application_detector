import 'package:flutter/material.dart';
import 'Screens/home.dart';
import 'Screens/results.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
 Widget build(BuildContext context){
  return MaterialApp(
    home: const Home(),
    routes: {
     // '/results': (context) => ResultsPage(),
    },
  );
 }
}

