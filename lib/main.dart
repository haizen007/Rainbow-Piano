import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:rainbow_piano/piano_note.dart';

PianoNote pianoNote = PianoNote();

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.deepPurple, // navigation bar color
      statusBarColor: Colors.pink, // status bar color
    ),
  );
  runApp(
    RainbowPiano(),
  );
}

class RainbowPiano extends StatelessWidget {
  const RainbowPiano({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rainbon Piano',
      builder: BotToastInit(), // call BotToastInit
      navigatorObservers: [
        BotToastNavigatorObserver() // registered route observer
      ],
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Rainbow Piano'),
        //   backgroundColor: Colors.black,
        // ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: RainbowPianoPage(),
        ),
      ),
    );
  }
}

class RainbowPianoPage extends StatefulWidget {
  RainbowPianoPage({Key key}) : super(key: key);

  @override
  _RainbowPianoPageState createState() => _RainbowPianoPageState();
}

class _RainbowPianoPageState extends State<RainbowPianoPage> {
  void playSound(int numb) {
    final player = AudioCache();
    player.play('notes/note$numb.mp3');
  }

  Expanded buildKey({Color color, int numb, Text text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: text, // '' then no text is sending by the buildKey
        onPressed: () {
          print(pianoNote.getPianoNote(numb)); // debug console
          playSound(numb);
          setState(() {
            BotToast.showText(
              text: pianoNote.getPianoNote(numb),
              animationDuration: Duration(milliseconds: 1000),
            );
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red[800], numb: 8),
                buildKey(color: Colors.orange[800], numb: 9),
                buildKey(color: Colors.yellow[800], numb: 10),
                buildKey(color: Colors.green[800], numb: 11),
                buildKey(color: Colors.teal[800], numb: 12),
                buildKey(color: Colors.blue[800], numb: 13),
                buildKey(color: Colors.purple[800], numb: 14),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, numb: 1),
                buildKey(color: Colors.orange, numb: 2),
                buildKey(color: Colors.yellow, numb: 3),
                buildKey(color: Colors.green, numb: 4),
                buildKey(color: Colors.teal, numb: 5),
                buildKey(color: Colors.blue, numb: 6),
                buildKey(color: Colors.purple, numb: 7),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
