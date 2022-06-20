import 'package:flutter/material.dart';

import '../models/doctors.dart';
import 'especialist_card.dart';

class EspecialistList extends StatelessWidget {
  final List<Especialist> especialists;

  const EspecialistList({Key? key, required this.especialists}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: especialists.length,
          itemBuilder: (context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: EspecialistCard(
                especialist: especialists[index],
              ),
            );
          }
      ),
    );
  }
}
