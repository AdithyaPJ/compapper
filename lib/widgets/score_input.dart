import 'package:flutter/material.dart';
import '../models/team.dart';

class ScoreInput extends StatelessWidget {
  final Team team;

  ScoreInput({required this.team});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('${team.name}', style: TextStyle(fontSize: 20)),
          for (int i = 0; i < 3; i++)
            Row(
              children: [
                Text('Judge ${i + 1}: '),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      team.scores[i] = int.tryParse(value) ?? 0;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter score (0-100)',
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
