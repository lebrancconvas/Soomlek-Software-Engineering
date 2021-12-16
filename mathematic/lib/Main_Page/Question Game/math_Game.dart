import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mathematic/Main_Page/Question Game/Question.dart';
import 'package:mathematic/Main_Page/Question%20Game/Main_Math_Game.dart';
import 'package:mathematic/Main_Page/Question%20Game/Timers.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

var stopwatch = Stopwatch();
var display = '00:00:00';
Timer? timer;
int timePoint = 0;
var second = '00';

class Math_Game extends StatefulWidget {
  const Math_Game({Key? key}) : super(key: key);

  @override
  _Math_GameState createState() => _Math_GameState();
}

class _Math_GameState extends State<Math_Game> {
  int number = 0;
  int score = 0;

  List<Question> quesList = Question.questionList;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void showAlert() {
    Alert(
      style: AlertStyle(
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        overlayColor: Colors.black54,
        isOverlayTapDismiss: false,
        isCloseButton: false,
        animationType: AnimationType.grow,
      ),
      context: context,
      title: "Congratulations!",
      desc:
          "Time : $display second \n You got $score point out of ${quesList.length} Tests",
      buttons: [
        DialogButton(
          width: 150,
          child: Text(
            "Play Again!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);

            score = 0;
            number = 0;
          },
        ),
      ],
    ).show();
  }

  void buttonHandling(String answer) {
    if (answer == quesList[number].answer) {
      if (int.parse(second) <= 10)
        timePoint += 10;
      else if (int.parse(second) <= 12)
        timePoint += 8;
      else if (int.parse(second) <= 15)
        timePoint += 6;
      else if (int.parse(second) <= 19)
        timePoint += 4;
      else if (int.parse(second) <= 25)
        timePoint += 2;
      else if (int.parse(second) > 25) timePoint += 0;

      score += 4;
    }

    if (number + 1 >= quesList.length) {
      stopwatch.stop();
      display = stopwatch.elapsed.inSeconds.toString();
      stopwatch.reset();
      score += timePoint;
      showAlert();
    } else
      setState(() => number += 1);

    second = '00';
  }

  Widget answerBotton(String choice, String answer) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border(
          bottom: BorderSide(
            width: 3,
            color: Color(0xFF1C4568),
          ),
          top: BorderSide(
            width: 3,
            color: Color(0xFF1C4568),
          ),
          left: BorderSide(
            width: 3,
            color: Color(0xFF1C4568),
          ),
          right: BorderSide(
            width: 3,
            color: Color(0xFF1C4568),
          ),
        ),
      ),
      child: OutlinedButton(
          onPressed: () {
            stopwatch.start();

            timer = Timer.periodic(Duration(microseconds: 88), (_) {
              setState(() {
                var m = stopwatch.elapsed.inMinutes.toString().padLeft(2, '0');
                var s = stopwatch.elapsed.inSeconds
                    .remainder(60)
                    .toString()
                    .padLeft(2, '0');
                var ms = stopwatch.elapsed.inMilliseconds
                    .remainder(1000)
                    .toString()
                    .padLeft(2, '0');
                second = stopwatch.elapsed.inSeconds.toString().padLeft(2, '0');
                display = m + ' : ' + s + ' : ' + ms;
              });
            });

            buttonHandling(answer);
          },
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                choice,
                style: TextStyle(
                  color: Color(0xFF202848),
                ),
              ),
            ),
            title: Text(
              answer,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                //     letterSpacing: 1,
              ),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สมการพาเพลิน'),
        backgroundColor: Colors.orange[400],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        width: double.infinity,
        //   color: Colors.green[50],
        color: Color(0xFF202848),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Question : ${number + 1} / ${quesList.length}         $display ",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  ),
                ),
                Expanded(
                  child: Text(
                    '${quesList[number].question}',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                Column(
                  children: [
                    answerBotton("I", quesList[number].options![0]),
                    answerBotton("II", quesList[number].options![1]),
                    answerBotton("III", quesList[number].options![2]),
                    answerBotton("IV", quesList[number].options![3]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
