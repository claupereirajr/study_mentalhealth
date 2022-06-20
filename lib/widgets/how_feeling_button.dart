import 'package:flutter/material.dart';

import '../models/feelings.dart';

class FeelingButton extends StatelessWidget {
  final Feeling feeling;

  const FeelingButton({
    Key? key, 
    required this.feeling
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {debugPrint('Feeling Button ${feeling.feelingText}')},
      style: ElevatedButton.styleFrom(
        primary: Colors.blue[400],
        padding: const EdgeInsets.all(20),
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        minimumSize: const Size(100, 100),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            feeling.emoticonFace,
            style: const TextStyle(fontSize: 36),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(feeling.feelingText),
        ],
      ),
    );
  }
}
