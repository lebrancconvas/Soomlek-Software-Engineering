import 'package:flutter/material.dart';
import 'package:mathematic/Main_Page/Calculate_Math/สมการสองตัวแปร.dart';
import 'package:mathematic/Main_Page/Calculate_Math/สมการตัวแปรเดียว.dart';
import 'package:mathematic/Main_Page/main_Page.dart';
import 'dart:math' as math;

class Parabola extends StatefulWidget {
  const Parabola({Key? key}) : super(key: key);

  @override
  _ParabolaState createState() => _ParabolaState();
}

class _ParabolaState extends State<Parabola> {
  String? _selectedValue;
  final a = TextEditingController();
  final b = TextEditingController();
  final c = TextEditingController();
  final globalA = GlobalKey<FormState>();
  final globalB = GlobalKey<FormState>();
  final globalC = GlobalKey<FormState>();
  double ab = 0;
  double bc = 0;
  // String abc = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text('สมการกำลังสองสมบูรณ์'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'AX^2 + BX + C = 0',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.green[300]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 55, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'A =  ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      width: 60,
                      padding: EdgeInsets.all(17),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Form(
                        child: TextFormField(
                          key: globalA,
                          controller: a,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration.collapsed(hintText: ''),
                          validator: (value) {
                            if (value == 0)
                              return 'กรุณากรอกให้ถูกต้อง ห้ามมีเลขศูนย์';
                            if (value!.isEmpty)
                              return 'กรุณากรอกให้ถูกต้อง ห้ามมีช่องว่าง';
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'B =  ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      width: 60,
                      padding: EdgeInsets.all(17),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Form(
                        child: TextFormField(
                          key: globalB,
                          controller: b,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration.collapsed(hintText: ''),
                          validator: (value) {
                            if (value!.isEmpty)
                              return 'กรุณากรอกให้ถูกต้อง ห้ามมีช่องว่าง';
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'C =  ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      width: 60,
                      padding: EdgeInsets.all(17),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Form(
                        child: TextFormField(
                          key: globalC,
                          controller: c,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration.collapsed(hintText: ''),
                          validator: (value) {
                            if (value!.isEmpty)
                              return 'กรุณากรอกให้ถูกต้อง ห้ามมีช่องว่าง';
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[300],
                    ),
                  ),
                  onPressed: () {
                    if (globalA.currentState!.validate() &&
                        globalB.currentState!.validate() &&
                        globalC.currentState!.validate()) {
                      this.ab = ((-double.parse(b.text) -
                              (math.sqrt((math.pow(double.parse(b.text), 2)) -
                                  (4 *
                                      double.parse(a.text) *
                                      double.parse(c.text))))) /
                          (2 * double.parse(a.text)));

                      bc = ((-double.parse(b.text) +
                              (math.sqrt((math.pow(double.parse(b.text), 2)) -
                                  (4 *
                                      double.parse(a.text) *
                                      double.parse(c.text))))) /
                          (2 * double.parse(a.text)));

                      // if (ab.isNaN || bc.isNaN)
                      //   abc = 'ค่า X หาค่าไม่ได้';
                      // else if (a.text.isEmpty ||
                      //     b.text.isEmpty ||
                      //     c.text.isEmpty)
                      //   abc = '';
                      // else
                      //   abc = '$ab  ,   $bc';
                      a.clear();
                      b.clear();
                      c.clear();
                      setState(() {
                        try {
                          ab;
                          bc;
                        } on FormatException catch (e) {
                          Text(e.message);
                        }
                      });
                    }
                  },
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'X(ค่าที่หนึ่ง)  =  ',
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(right: 65),
                          child: TextButton(
                            onPressed: null,
                            child: Text(
                              ab.toString(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'X(ค่าที่สอง)  =  ',
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(right: 65),
                          child: TextButton(
                            onPressed: null,
                            child: Text(
                              bc.toString(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Text(
                  'คำอธิบาย : ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40, right: 30),
                child: Column(
                  children: [
                    Text(
                        '             สมการกำลังสองสมบูรณ์ เมื่อนำสมการ Xกำลัง2 วาดจุดลงไปในกราฟแล้วจะได้เป็น "พาราโบลา" หรือลักษณะเป็นรูประฆัง สมการนี้ สามารถแยกออกได้เป็น2 factor ตัวอย่างเช่น X^2 + 2XY + Y^2 = 0 จะได้'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '             (X + Y)(X + Y) = 0 หรือ (X + Y)^2 = 0 ถอดสแควรูท จะได้ X + Y = 0 จะได้ X เท่ากับ -Y ในกรณีที่ ฝั่งขวามือของเรา (ให้นับเครื่องหมายเท่ากับคือตรงกลาง) ถ้าค่าที่มี ไม่เท่ากับศูนย์แล้วนั้น ให้เราทำการปรับค่า ให้เท่ากับศูนย์เสมอ สาเหตุที่ต้องปรับให้เท่ากับศูนย์ก็เพราะค่าที่ออกมาจะแน่นอนที่สุด นั่นคือจะมีแค่0 ถึง 2 ค่าเท่านั้น หากเป็นตัวอื่นค่าจะเยอะมากซึ่งเอาแน่นอนไม่ได้'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '              ตัวอย่างเช่น X^2 + 2XY + Y^2 = 1 เมื่อพิจารณา 1 ทางด้านขวามือของเรา เลข 1 สามารถแยกได้หลายเลข ดังนี้ (1/4)*4 , (1/17)*17 , 39 * (1/39) , (-1)*(-1) , (-14)*(-1/14) เป็นต้น ดังนั้นเราจึงต้องกำหนดค่าฝั่งด้านขวาให้เป็นเลขศูนย์เสมอ หากเราไม่สามารถแยก factor จากสมการได้ สามารถใช้สูตรดังต่อไปนี้เพื่อหาค่าของตัวแปร X ได้ดังนี้'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'x = (-b - [root(b^2 - 4ac)] ) / 2a , (-b + [root(b^2 - 4ac)] ) / 2a'),
                    SizedBox(
                      height: 45,
                    ),
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
