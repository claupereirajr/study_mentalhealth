
import 'package:equatable/equatable.dart';

class Feeling extends Equatable {
  final String emoticonFace;
  final String feelingText;
  final bool actived;

  const Feeling({
    required this.emoticonFace, 
    required this.feelingText, 
    required this.actived,
  });

  @override
  List<Object?> get props {
    return [emoticonFace, feelingText, actived];
  }

  static List<Feeling> feelings = [
    const Feeling(emoticonFace: '😬', feelingText: 'Ansioso', actived: true),
    const Feeling(emoticonFace: '😀', feelingText: 'Feliz', actived: true),
    const Feeling(emoticonFace: '😍', feelingText: 'Apaixonado', actived: true),
    const Feeling(emoticonFace: '😵', feelingText: 'Cansado', actived: true),
    const Feeling(emoticonFace: '😡', feelingText: 'Estressado', actived: true),
    const Feeling(emoticonFace: '😭', feelingText: 'Triste', actived: true),
  ];
}
