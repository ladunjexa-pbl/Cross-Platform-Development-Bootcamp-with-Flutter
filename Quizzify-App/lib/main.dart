import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(const Quizzify());


class Quizzify extends StatelessWidget {
  const Quizzify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzify',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectedAnswer();

    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
                context: context,
                title: 'Finished',
                desc: 'You\'ve reached the end of the quiz.')
            .show();

        quizBrain.reset();

        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20.0,
      color: Colors.black,
      shadowColor: Colors.grey.shade600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Divider(
              height: 20,
              thickness: 1.2,
              indent: 40,
              endIndent: 40,
              color: Colors.grey.shade900
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  checkAnswer(true);
                },
                child: Text(
                  'True',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  checkAnswer(false);
                },
                child: Text(
                  'False',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}
