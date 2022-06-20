import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.blue,
                  size: 24.0,
                ),
                onPressed: () {
                  debugPrint('menu-item home');
                  Navigator.pushNamed(context, '/');
                }),
              IconButton(
                icon: const Icon(
                  Icons.category,
                  color: Colors.blue,
                  size: 24.0,
                ),
                onPressed: () {
                  debugPrint('menu-item categ');
                  Navigator.pushNamed(context, '/doctor');
                }),
              IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Colors.blue,
                  size: 24.0,
                ),
                onPressed: () {
                  debugPrint('menu-item config');
                })
            ],
          )),
    );
  }
}
