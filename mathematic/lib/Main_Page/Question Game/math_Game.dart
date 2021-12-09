import 'package:flutter/material.dart';
import 'package:mathematic/Main_Page/Question Game/Question.dart';
import 'package:mathematic/Main_Page/Question%20Game/Main_Math_Game.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Math_Game extends StatefulWidget {
  const Math_Game({Key? key}) : super(key: key);

  @override
  _Math_GameState createState() => _Math_GameState();
}

class _Math_GameState extends State<Math_Game> {
  int number = 0;
  int score = 0;

  List<Question> quesList = Question.questionList;

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
      desc: "You got $score out of ${quesList.length}",
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
    if (answer == quesList[number].answer) score += 1;

    if (number + 1 >= quesList.length)
      showAlert();
    else
      setState(() => number += 1);
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
          onPressed: () => buttonHandling(answer),
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
                  "Question : ${number + 1} / ${quesList.length}",
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
