import 'package:flutter/material.dart';

class ChatAppBar extends StatefulWidget {
  const ChatAppBar({Key? key}) : super(key: key);

  @override
  State<ChatAppBar> createState() => _ChatAppBarState();
}

class _ChatAppBarState extends State<ChatAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            onPressed: () => {
              debugPrint('Back chat clicked'),
              Navigator.pushNamed(context, '/doctor')
            },
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                elevation: 10.0,
                primary: Colors.blue[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                )),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Joana Darc',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Online',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        ElevatedButton(
            onPressed: () => {debugPrint('Call Doctor Clicked')},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                elevation: 10.0,
                primary: Colors.blue[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                )),
            child: const Icon(
              Icons.phone_in_talk,
              color: Colors.white,
            )),
      ],
    );
  }
}