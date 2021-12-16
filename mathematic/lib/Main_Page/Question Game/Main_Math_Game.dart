import 'package:flutter/material.dart';
import 'package:mathematic/Main_Page/Question%20Game/math_Game.dart';

class MainGame extends StatelessWidget {
  const MainGame({Key? key}) : super(key: key);

  @override
  void setState() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      //    backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text("สมการพาเพลิน"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 8.3),
                child: Image.asset(
                  "pic/2.jpg",
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Math_Game();
                    }));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan,
                  ),
                  child: Text(
                    "เริ่ม Quiz!!",
                    style: TextStyle(color: Colors.brown, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
