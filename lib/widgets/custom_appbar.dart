import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Olá, Fellipe',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              '26 Maio 2022',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        ElevatedButton(
            onPressed: () => {debugPrint('Notifications Clicked')},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                elevation: 10.0,
                primary: Colors.blue[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                )),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            )),
      ],
    );
  }
}
