import 'package:rainbow_piano/piano.dart';

class PianoNote {
  static final List<Piano> _pianoList = [
    Piano(note: 'do'),
    Piano(note: 're'),
    Piano(note: 'mi'),
    Piano(note: 'fa'),
    Piano(note: 'sol'),
    Piano(note: 'la'),
    Piano(note: 'si'),
    Piano(note: 'DO'),
    Piano(note: 'RE'),
    Piano(note: 'MI'),
    Piano(note: 'FA'),
    Piano(note: 'SOL'),
    Piano(note: 'LA'),
    Piano(note: 'SI'),
    // Piano(note: 'c'),
    // Piano(note: 'd'),
    // Piano(note: 'e'),
    // Piano(note: 'f'),
    // Piano(note: 'g'),
    // Piano(note: 'a'),
    // Piano(note: 'b'),
    // Piano(note: 'C'),
    // Piano(note: 'D'),
    // Piano(note: 'E'),
    // Piano(note: 'F'),
    // Piano(note: 'G'),
    // Piano(note: 'A'),
    // Piano(note: 'B'),
  ];

  String getPianoNote(int numb) {
    return _pianoList[numb - 1].note;
  }
}
