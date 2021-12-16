// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mathematic/Main_Page/Calculate_Math/สมการกำลังสองสมบูรณ์.dart';
import 'package:mathematic/Main_Page/Calculate_Math/สมการสองตัวแปร.dart';
import 'package:mathematic/Main_Page/main_Page.dart';

class Linear extends StatefulWidget {
  const Linear({Key? key}) : super(key: key);

  @override
  _LinearState createState() => _LinearState();
}

class _LinearState extends State<Linear> {
  String? _selectedValue;
  final a = TextEditingController();
  final b = TextEditingController();
  final c = TextEditingController();
  final globalA = GlobalKey<FormState>();
  final globalB = GlobalKey<FormState>();
  final globalC = GlobalKey<FormState>();
  double abc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text('สมการตัวแปรเดียว'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              // Center(
              //   child: DropdownButton(
              //     items: [
              //       'สมการสองตัวแปร',
              //       'สมการกำลังสองสมบูรณ์',
              //     ].map((String value) {
              //       return DropdownMenuItem(
              //         // เมนูให้เลือกช้อย
              //         value: value,
              //         child: Text(
              //           value,
              //         ),
              //       );
              //     }).toList(),
              //     hint: Text('สมการตัวแปรเดียว'),
              //     onChanged: (String? value) {
              //       setState(() {
              //         _selectedValue = value;
              //         if (value == 'สมการตัวแปรเดียว') {
              //           Navigator.push(context, MaterialPageRoute(
              //             builder: (context) {
              //               return Linear();
              //             },
              //           ));
              //         }
              //         if (value == 'สมการสองตัวแปร') {
              //           Navigator.push(context,
              //               MaterialPageRoute(builder: (context) {
              //             return Optimization();
              //           }));
              //         }
              //         if (value == 'สมการกำลังสองสมบูรณ์') {
              //           Navigator.push(context,
              //               MaterialPageRoute(builder: (context) {
              //             return Parabola();
              //           }));
              //         }
              //       });
              //     },
              //     value: _selectedValue,
              //   ),
              // ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'AX + B = C',
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
                        key: globalA,
                        child: TextFormField(
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
                        key: globalB,
                        child: TextFormField(
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
                        key: globalC,
                        child: TextFormField(
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
                      this.abc = (double.parse(c.text) - double.parse(b.text)) /
                          double.parse(a.text);

                      a.clear();
                      b.clear();
                      c.clear();
                      setState(() {
                        try {
                          abc;
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'X  =  ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(right: 65),
                      child: TextButton(
                        onPressed: null,
                        child: Text(
                          abc.toString(),
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
                        '             สมการ AX = B จะมีสมการคล้ายๆกับ Y = mx + c หรือคล้ายๆ สมการในเมตริกซ์ โดย A และ B นั้น เป็นค่าตัวเลขค่าหนึ่ง โดยที่ A และ B ค่าจะเท่ากันหรือไม่ก็ได้ แต่ A ห้ามเป็นศูนย์เนื่องจากถ้า A เป็นศูนย์แล้ว B มีค่าเป็นเลขตัวอื่นๆที่ไม่ใช่ศูนย์นั้น จะทำให้สมการเป็นเท็จเสมอ'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '             การหาค่าสมการ AX = B นั้นจะหาได้โดยการย้าย A ที่คูณกับ X อยู่ ไปหาฝั่งขวาที่เป็น B เมื่อย้ายฝั่ง จากคูณจะต้องเปลี่ยนเป็นตรงกันข้าม ตรงกันข้ามของคูณคือการหาร ดังนั้น จะได้ X = B หารด้วย A เป็นคำตอบของสมการ'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '              สาเหตุที่เราหาค่าของ X นั้นเพราะเนื่องจากเราไม่ทราบค่าของ X ตั้งแต่แรก เมื่อเราทราบค่า A และ B แล้ว แต่เรายังไม่ทราบค่าของ X เราจึงต้องทำการหาค่า X เพื่อทราบค่าที่แท้จริง'),
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
