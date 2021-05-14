import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'counter_screen.dart';

class Entry extends StatelessWidget {
  const Entry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Home(title: 'Entry Point'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key, required String title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _textControllerA = TextEditingController();
  final _textControllerB = TextEditingController();
  var _teamAName = "";
  var _teamBName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teams Register'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Team A Name',
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _textControllerA,
              decoration: InputDecoration(hintText: 'Enter Team A Name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Team B Name',
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _textControllerB,
              decoration: InputDecoration(hintText: 'Enter Team B Name'),
            ),
          ),
          ElevatedButton(
              onPressed: () => navToCount(context, _textControllerA.text, _textControllerB.text), child: Text('Enter'),
          ),
        ],
      ),
    );
  }

  Future<void> navToCount(BuildContext context, String teamA, String teamB) async {

    _textControllerA.clear();
    _textControllerB.clear();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Counter(
                  teamBName: '$teamB',
                  teamAName: '$teamA',
                )));
    
  }


}
