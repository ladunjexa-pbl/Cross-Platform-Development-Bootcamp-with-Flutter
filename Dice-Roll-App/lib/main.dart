import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.indigo.shade50,
          body: const DiceActivity(),
        )
    );
  }
}

class DiceActivity extends StatefulWidget {
  const DiceActivity({Key? key}) : super(key: key);

  @override
  State<DiceActivity> createState() => _DiceActivityState();
}

class _DiceActivityState extends State<DiceActivity> {
  int leftDiceNumber = 6,
      rightDiceNumber = 2,
      properIconIndex = 0;

  String properWinnerText = 'Left';

  final List<IconData> _icons = [
    Icons.arrow_back,
    Icons.arrow_forward,
    Icons.equalizer,
  ];

  void mixDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;

      if(leftDiceNumber > rightDiceNumber) {
        properIconIndex = 0;
        properWinnerText = 'Left';
      } else if(leftDiceNumber < rightDiceNumber) {
        properIconIndex = 1;
        properWinnerText = 'Right';
      } else {
        properIconIndex = 2;
        properWinnerText = 'Draw';
      }
      // properIconIndex = (leftDiceNumber > rightDiceNumber) ? 0 : 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The Winner is:',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.indigo.shade900,
              fontWeight: FontWeight.bold
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                _icons[properIconIndex],
                color: Colors.indigo.shade300,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                properWinnerText,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 28.0,
                  color: Colors.indigo.shade100,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
          Divider(
              height: 20,
              thickness: 1,
              indent: 50,
              endIndent: 50,
              color: Colors.indigo.shade100
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: TextButton(
                    onPressed: () {
                      mixDice();
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  )
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    mixDice();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                )
              )
            ],
          ),
        ],
      )
    );
  }
}