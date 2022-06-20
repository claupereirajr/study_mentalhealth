import 'package:flutter/material.dart';

import '../models/exercises.dart';

class ExerciseTile extends StatelessWidget {
  final Exercise exercise;

  const ExerciseTile({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                      color: exercise.color,
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(
                        exercise.icon,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exercise.execTitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '${exercise.execSubTitle} Exercícios',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ])
              ],
            ),
            const Icon(Icons.more_horiz)
          ],
        ));
  }
}
