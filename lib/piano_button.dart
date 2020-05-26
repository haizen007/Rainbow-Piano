import 'package:audioplayers/audio_cache.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:rainbow_piano/piano_note.dart';

PianoNote pianoNote = PianoNote();

class PianoButton extends StatelessWidget {
  final Color color;
  final int numb;

  final Text text;

  PianoButton({@required this.color, @required this.numb, this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        shape: ContinuousRectangleBorder(),
        color: color,
        child: text,
        splashColor: color,
        onPressed: () {
          playSound(numb);
          BotToast.showText(
            text: pianoNote.getPianoNote(numb),
            animationDuration: Duration(milliseconds: 1000),
          );
        },
      ),
    );
  }

  void playSound(int numb) {
    final player = AudioCache();
    player.play('notes/note$numb.mp3');
  }
}
