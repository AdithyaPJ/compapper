import 'package:flutter/material.dart';
import '../models/team.dart';

class ResultsTable extends StatelessWidget {
  final List<Team> teams;

  ResultsTable({required this.teams});

  @override
  Widget build(BuildContext context) {
    teams.sort((a, b) => b.totalScore.compareTo(a.totalScore));
    Team winner = teams.first;

    return DataTable(
      columns: [
        DataColumn(label: Text('Team')),
        DataColumn(label: Text('Total Score')),
      ],
      rows: teams.map((team) {
        return DataRow(
          cells: [
            DataCell(Text(team.name)),
            DataCell(Text(team.totalScore.toString())),
          ],
          color: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (team == winner) return Colors.green.withOpacity(0.3);
              return null;
            },
          ),
        );
      }).toList(),
    );
  }
}
