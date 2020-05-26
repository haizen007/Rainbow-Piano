import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:rainbow_piano/piano_button.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rainbon Piano',
      builder: BotToastInit(), // call BotToastInit
      navigatorObservers: [
        BotToastNavigatorObserver() // registered route observer
      ],
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: RainbowPianoPage(),
        ),
      ),
    );
  }
}

class RainbowPianoPage extends StatefulWidget {
  @override
  _RainbowPianoPageState createState() => _RainbowPianoPageState();
}

class _RainbowPianoPageState extends State<RainbowPianoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                PianoButton(color: Colors.red[800], numb: 8),
                PianoButton(color: Colors.orange[800], numb: 9),
                PianoButton(color: Colors.yellow[700], numb: 10),
                PianoButton(color: Colors.green[800], numb: 11),
                PianoButton(color: Colors.teal[800], numb: 12),
                PianoButton(color: Colors.blue[800], numb: 13),
                PianoButton(color: Colors.purple[800], numb: 14),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                PianoButton(color: Colors.red, numb: 1),
                PianoButton(color: Colors.orange, numb: 2),
                PianoButton(color: Colors.yellow, numb: 3),
                PianoButton(color: Colors.green, numb: 4),
                PianoButton(color: Colors.teal, numb: 5),
                PianoButton(color: Colors.blue, numb: 6),
                PianoButton(color: Colors.purple, numb: 7),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
