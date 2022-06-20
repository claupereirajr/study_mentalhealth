import 'package:flutter/material.dart';

import '../models/exercises.dart';
import 'exercise_tile.dart';

class ExerciseList extends StatelessWidget {
  final List<Exercise> exercises;

  const ExerciseList({Key? key, required this.exercises}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: exercises.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: ExerciseTile(
                exercise: exercises[index],
              ),
            );
          }
      ),
    );
  }
}
