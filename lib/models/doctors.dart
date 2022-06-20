import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Especialist extends Equatable {
  final color;
  final String espcImg;
  final String espcName;
  final String espcCateg;
  final bool actived;

  const Especialist({
    required this.color,
    required this.espcImg,
    required this.espcName,
    required this.espcCateg,
    required this.actived
  });

  @override
  List<Object?> get props {
    return [color, espcImg, espcName, espcCateg, actived];
  }

  static List<Especialist> especialists = [
    const Especialist(
        color: Colors.orange,
        espcImg:
            'assets/images/avatar1.png',
        espcName: 'Joana Darc',
        espcCateg: 'Relacionamento',
        actived: true),
    const Especialist(
        color: Colors.red,
        espcImg:
            'assets/images/avatar2.png',
        espcName: 'Tiago da Silva',
        espcCateg: 'Educação',
        actived: true),
    const Especialist(
        color: Colors.green,
        espcImg:
            'assets/images/avatar4.png',
        espcName: 'Tiago da Silva',
        espcCateg: 'Relacionamento',
        actived: true),
    const Especialist(
        color: Colors.blue,
        espcImg:
            'assets/images/avatar3.png',
        espcName: 'Joana Darc',
        espcCateg: 'Carreira',
        actived: true),
    const Especialist(
        color: Colors.orange,
        espcImg:
            'assets/images/avatar6.png',
        espcName: 'Fernando Molhote',
        espcCateg: 'Educação',
        actived: true),
    const Especialist(
        color: Colors.indigo,
        espcImg:
            'assets/images/avatar2.png',
        espcName: 'Fernando Molhote',
        espcCateg: 'Relacionamento',
        actived: true),
    const Especialist(
        color: Colors.brown,
        espcImg:
            'assets/images/avatar7.png',
        espcName: 'Maria Cardoso',
        espcCateg: 'Educação',
        actived: true),
    const Especialist(
        color: Colors.purpleAccent,
        espcImg:
            'assets/images/avatar1.png',
        espcName: 'Joana Darc',
        espcCateg: 'Personal',
        actived: true),
  ];
}
