import 'package:rainbow_piano/piano.dart';

class PianoNote {
  List<Piano> _pianoNote = [
    Piano('c'),
    Piano('d'),
    Piano('e'),
    Piano('f'),
    Piano('g'),
    Piano('a'),
    Piano('b'),
    Piano('C'),
    Piano('D'),
    Piano('E'),
    Piano('F'),
    Piano('G'),
    Piano('A'),
    Piano('B'),
  ];

  String getPianoNote(int numb) {
    return _pianoNote[numb - 1].pianoText;
  }
}
