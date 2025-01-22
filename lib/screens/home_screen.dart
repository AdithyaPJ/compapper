import 'package:flutter/material.dart';
import '../models/team.dart';
import '../screens/results_screen.dart';
import '../widgets/score_input.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Team> teams =
      List.generate(5, (index) => Team(name: 'Team ${index + 1}'));

  void navigateToResults() {
    teams.forEach((team) => team.calculateTotalScore());
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultsScreen(teams: teams)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Score Input')),
      body: ListView.builder(
        itemCount: teams.length,
        itemBuilder: (context, index) {
          return ScoreInput(team: teams[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: navigateToResults,
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
