import 'package:flutter/material.dart';
import 'package:mathematic/Main_Page/Calculate_Math/Parabola.dart';
import 'package:mathematic/Main_Page/Calculate_Math/Optimization.dart';
import 'package:mathematic/Main_Page/Calculate_Math/Linear.dart';
import 'package:mathematic/Main_Page/main_Page.dart';

class Mathematic extends StatefulWidget {
  const Mathematic({Key? key}) : super(key: key);

  @override
  _MathematicState createState() => _MathematicState();
}

class _MathematicState extends State<Mathematic> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text('คำนวณสูตรพื้นฐาน'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              Center(
                child: DropdownButton(
                  // ปุ่มช้อยตัวเลือก
                  items: [
                    'สมการตัวแปรเดียว',
                    'สมการสองตัวแปร',
                    'สมการกำลังสองสมบูรณ์',
                  ].map((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(
                        value,
                      ),
                    );
                  }).toList(),
                  hint: Text('Please choose Theorem you want!!'),
                  onChanged: (String? value) {
                    setState(() {
                      _selectedValue = value;
                      if (value == 'สมการตัวแปรเดียว') {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Linear();
                          },
                        ));
                      }
                      if (value == 'สมการสองตัวแปร') {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Optimization();
                        }));
                      }
                      if (value == 'สมการกำลังสองสมบูรณ์') {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Parabola();
                        }));
                      }
                    });
                  },
                  value: _selectedValue,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Image.asset("pic/1.jpg"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "ทฤษฎีบทเพิ่มเติมที่น่าสนใจ : ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "     -   ทฤษฎีบทตรรกศาสตร์",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "     -   ทฤษฎีบทพีชคณิต",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "     -   ทฤษฎีบทยูคลิด",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "     -   ทฤษฎีบทเลขาคณิต",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "     -   ทฤษฎีบทมูลฐานเลขคณิต",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "     -   ทฤษฎีบทเวนน์ - ออยเลอร์",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "     -   ทฤษฎีบทเซต",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "     -   ทฤษฎีบทอสมการ",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "     -   ทฤษฎีบทพีทาโกรัส",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "     -   ทฤษฎีบทมูลฐานแคลคูลัส",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "     -   อื่นๆ",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "ติดตามพวกเราได้ที่ : ",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "                  Website          :         FunMaths.com",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "                  Facebook       :         FunMaths",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 60,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
