import 'package:flutter/material.dart';

import '../models/feelings.dart';
import 'how_feeling_button.dart';

class FeelingCarousel extends StatelessWidget {
  final List<Feeling> feelings;

  const FeelingCarousel({
    Key? key,
    required this.feelings
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.0,
      child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 20.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: feelings.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: FeelingButton(feeling: feelings[index],),
            );
          }),
    );
  }
}
