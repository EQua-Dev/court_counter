import 'package:court_counter/app_screens/entry_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Counter extends StatefulWidget {
  final String teamAName;
  final String teamBName;

  const Counter({Key? key, required this.teamAName, required this.teamBName})
      : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var _teamAScore = 0;
  var _teamBScore = 0;
  var _isGameOver = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Court Counter'),
        ),
        body: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: _teamAColumn(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: VerticalDivider(
                      thickness: 5.0,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: _teamBColumn())),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ElevatedButton(
                          onPressed: () => _isGameOver = true,
                          child: Text('Game Over!')),
                    ))),
            Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        _teamAScore = 0;
                        _teamBScore = 0;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Entry()));
                      },
                      child: Text('Reset Game'),
                    ),
                  ),
                ))
          ],
        ));
  }

  Widget _teamAColumn() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            widget.teamAName,
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 100.0,
          child: Container(
            width: 100.0,
            height: 90.0,
            child: Text(
              '$_teamAScore',
              style: TextStyle(
                fontSize: 50.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Divider(
          height: 2.0,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: ElevatedButton(
            onPressed: () {
              if (!_isGameOver) {
                setState(() {
                  _teamAScore += 3;
                });
              }
            },
            child: Text('+3 Points'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: ElevatedButton(
            onPressed: () {
              if (!_isGameOver) {
                setState(() {
                  _teamAScore += 2;
                });
              }
            },
            child: Text('+2 Points'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: ElevatedButton(
            onPressed: () {
              if (!_isGameOver) {
                setState(() {
                  _teamAScore += 1;
                });
              }
            },
            child: Text('+1 Points'),
          ),
        )
      ],
    );
  }

  Widget _teamBColumn() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(widget.teamBName,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 100.0,
          child: Container(
            width: 100.0,
            height: 90.0,
            child: Text(
              '$_teamBScore',
              style: TextStyle(
                fontSize: 50.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Divider(
          height: 2.0,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: ElevatedButton(
            onPressed: () {
              if (!_isGameOver) {
                setState(() {
                  _teamBScore += 3;
                });
              }
            },
            child: Text('+3 Points'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: ElevatedButton(
            onPressed: () {
              if (!_isGameOver) {
                setState(() {
                  _teamBScore += 2;
                });
              }
            },
            child: Text('+2 Points'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: ElevatedButton(
            onPressed: () {
              if (!_isGameOver) {
                setState(() {
                  _teamBScore += 1;
                });
              }
            },
            child: Text('+1 Points'),
          ),
        )
      ],
    );
  }
}
