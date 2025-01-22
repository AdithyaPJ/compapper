import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(EventScoringApp());
}

class EventScoringApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Scoring System',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

