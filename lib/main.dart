import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(StopWathcHome());
}

class StopWathcHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StopWathcHomeState();
  }
}

class StopWathcHomeState extends State<StopWathcHome> {
  int _counter = 0;
  Timer _timer;

  void startTimer() {
    _timer = Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {
        _counter++;
      });
    });
  }

  void pauseTimer() {
    _timer.cancel();
  }

  void resetTimer() {
    _timer.cancel();
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Stopwatch")),
            body: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('$_counter',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 45))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      onPressed: startTimer,
                      color: Colors.deepOrange,
                      child: Text(
                        'Start',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    RaisedButton(
                      onPressed: pauseTimer,
                      color: Colors.deepOrange,
                      child: Text(
                        'Pause',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    RaisedButton(
                      onPressed: resetTimer,
                      color: Colors.deepOrange,
                      child: Text(
                        'Reset',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                )
              ],
            ))));
  }
}
