import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Exercise extends Equatable {
  final icon;
  final String execTitle;
  final int execSubTitle;
  final color;
  final bool actived;

  const Exercise({
    required this.icon,
    required this.execTitle,
    required this.execSubTitle,
    required this.color,
    required this.actived,
  });

  @override
  List<Object?> get props {
    return [icon, execTitle, execSubTitle, color];
  }

  static List<Exercise> exercises = [
    const Exercise(icon: Icons.connect_without_contact, execTitle: 'Conversação', execSubTitle: 12, color: Colors.orange, actived: true),
    const Exercise(icon: Icons.auto_stories, execTitle: 'Leitura', execSubTitle: 16, color: Colors.indigo, actived: true),
    const Exercise(icon: Icons.create, execTitle: 'Escrita', execSubTitle: 4, color: Colors.pink, actived: true),
    const Exercise(icon: Icons.person, execTitle: 'Amor próprio', execSubTitle: 7, color: Colors.green, actived: true),
    const Exercise(icon: Icons.person, execTitle: 'Reading speed', execSubTitle: 12, color: Colors.indigo, actived: true),
    const Exercise(icon: Icons.start, execTitle: 'Writing skills', execSubTitle: 12, color: Colors.pink, actived: true),
  ];
}
