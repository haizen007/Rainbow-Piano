import 'package:audioplayers/audio_cache.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:rainbow_piano/piano_note.dart';

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
          AudioCache().play('notes/note$numb.mp3');
          BotToast.showText(
            text: PianoNote().getPianoNote(numb),
            animationDuration: Duration(milliseconds: 1000),
          );
        },
      ),
    );
  }
}
