import 'package:flutter/material.dart';
import '../models/team.dart';
import '../widgets/results_table.dart';

class ResultsScreen extends StatelessWidget {
  final List<Team> teams;

  ResultsScreen({required this.teams});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Results')),
      body: ResultsTable(teams: teams),
    );
  }
}
