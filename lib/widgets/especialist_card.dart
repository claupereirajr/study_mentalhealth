import 'package:flutter/material.dart';

import '../models/doctors.dart';

class EspecialistCard extends StatelessWidget {
  final Especialist especialist;

  const EspecialistCard({
    Key? key,
    required this.especialist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {Navigator.pushNamed(context, '/chat')},
      child: Container(
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
                        color: especialist.color,
                        padding: const EdgeInsets.only(bottom: 0.0, left: 5.0, right: 5.0, top: 10.0),
                        child: Image.asset(
                          width: 56.0,
                          especialist.espcImg,
                          fit: BoxFit.cover
                        )),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          especialist.espcName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          especialist.espcCateg,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ])
                ],
              ),
              const Icon(Icons.more_horiz)
            ],
          )),
    );
  }
}
