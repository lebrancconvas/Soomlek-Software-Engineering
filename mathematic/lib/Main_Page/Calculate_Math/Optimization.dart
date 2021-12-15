import 'package:flutter/material.dart';
import 'package:mathematic/Main_Page/Calculate_Math/Parabola.dart';
import 'package:mathematic/Main_Page/Calculate_Math/Linear.dart';

class Optimization extends StatefulWidget {
  const Optimization({Key? key}) : super(key: key);

  @override
  _OptimizationState createState() => _OptimizationState();
}

class _OptimizationState extends State<Optimization> {
  String? _selectedValue;
  final a = TextEditingController();
  final b = TextEditingController();
  final c = TextEditingController();
  final d = TextEditingController();
  final e = TextEditingController();
  final f = TextEditingController();
  final globalA = GlobalKey<FormState>();
  final globalB = GlobalKey<FormState>();
  final globalC = GlobalKey<FormState>();
  final globalD = GlobalKey<FormState>();
  final globalE = GlobalKey<FormState>();
  final globalF = GlobalKey<FormState>();
  double abc = 0;
  double def = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text('สมการสองตัวแปร'),
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
              //       'สมการตัวแปรเดียว',
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
              //     hint: Text('สมการสองตัวแปร'),
              //     onChanged: (String? value) {
              //       setState(() {
              //         _selectedValue = value;
              //         if (value == 'สมการตัวแปรเดียว') {
              //           Navigator.push(context,
              //               MaterialPageRoute(builder: (context) {
              //             return Linear();
              //           }));
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
                  'AX + BY = C',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.green[300]),
                ),
              ),
              // Center(
              //   child: Text(
              //     'DX + EY = F',
              //     style: TextStyle(
              //         fontSize: 40,
              //         fontWeight: FontWeight.w500,
              //         color: Colors.green[300]),
              //   ),
              // ),
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
                            // if (value == 0)
                            //   return 'กรุณากรอกให้ถูกต้อง ห้ามมีเลขศูนย์';
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
                            if (value == 0 && double.parse(a.text) == 0)
                              return 'กรุณากรอกให้ถูกต้อง ห้ามมีเลขศูนย์';
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
              // SizedBox(
              //   height: 15,
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'D =  ',
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
                        key: globalD,
                        child: TextFormField(
                          controller: d,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration.collapsed(hintText: ''),
                          validator: (value) {
                            // if (value == 0)
                            //   return 'กรุณากรอกให้ถูกต้อง ห้ามมีเลขศูนย์';
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
                      'E =  ',
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
                        key: globalE,
                        child: TextFormField(
                          controller: e,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration.collapsed(hintText: ''),
                          validator: (value) {
                            if (value!.isEmpty)
                              return 'กรุณากรอกให้ถูกต้อง ห้ามมีช่องว่าง';
                            if (value == 0 && double.parse(d.text) == 0)
                              return 'กรุณากรอกให้ถูกต้อง ห้ามมีเลขศูนย์';
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'F =  ',
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
                        key: globalF,
                        child: TextFormField(
                          controller: f,
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
                        globalC.currentState!.validate() &&
                        globalD.currentState!.validate() &&
                        globalE.currentState!.validate() &&
                        globalF.currentState!.validate()) {
                      double x;
                      double y;

                      if (double.parse(a.text) == 0 ||
                          double.parse(d.text) == 0) {
                        double d1 = double.parse(d.text) *
                            double.parse(b.text) /
                            double.parse(e.text);
                        double e1 = double.parse(b.text);
                        double f1 = double.parse(f.text) *
                            double.parse(b.text) /
                            double.parse(e.text);

                        double ad = double.parse(a.text) - d1;
                        x = (double.parse(c.text) - f1) / ad;

                        y = (f1 - (d1 * x)) / e1;
                      } else {
                        double d1 = double.parse(a.text);
                        double e1 = double.parse(e.text) *
                            double.parse(a.text) /
                            double.parse(d.text);
                        double f1 = double.parse(f.text) *
                            double.parse(a.text) /
                            double.parse(d.text);

                        double be = double.parse(b.text) - e1;
                        y = (double.parse(c.text) - f1) / be;

                        x = (f1 - (e1 * y)) / d1;
                      }
                      this.abc = x;
                      def = y;

                      a.clear();
                      b.clear();
                      c.clear();
                      d.clear();
                      e.clear();
                      f.clear();

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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'X    =     ',
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(right: 45),
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
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Y    =     ',
                            style: TextStyle(fontSize: 20),
                          ),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.only(right: 45),
                            child: TextButton(
                              onPressed: null,
                              child: Text(
                                def.toString(),
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
                        '               สมการสองตัวแปร เมื่อ X และ Y คือ ตัวแปร ในส่วน a , b และ c คือค่าคงที่ซึ่งแทนด้วยตัวเลข เราจำเป็นต้องทราบค่าของ a ,b และ c ก่อนจากนั้น วิธีการหานั้นเราจะต้องมี2สมการของสองตัวแปร จากนั้น ทำให้ตัวแปรใดตัวแปรหนึ่งมีค่าเท่ากันถ้าไม่เท่ากันทั้งสองสมการจากนั้นนำ2สมการมาลบกัน ค่าที่เหมือนกันจะเป็นศูนย์ จากนั้นนำค่าที่ติดตัวแปรที่เหลือย้ายข้างไปหารกับอีกฝั่งเผื่อหาค่าของตัวแปรนั้น จากนั้นแทนตัวแปรนั้นลงในสมการไหนก็ได้เพื่อหาค่าอีกจำนวน1ตัวแปร'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        '               ตัวอย่าง 4X + 2Y = 8 เป็นสมการที่1 และ 2X + 5Y = 12 เป็นสมการที่2 นำสมการที่2คูณ2ตลอดทั้งสมการเพื่อให้ตัวแปรXทั้งสองสมการมีค่าเท่ากัน จะได้ 4X + 10Y = 24 จากนั้นนำสมการนี้กับสมการที่1มาลบกันจะได้ 0X + 8Y = 16 หรือก็คือ 8Y = 16 เมื่อทำการหาค่า Y Y จะเท่ากับ 16 / 8 หรือเท่ากับ 2 แทนYลงในสมการไหนก็ได้ ในที่นี้แทนในสมการที่2 จะได้ 2X + (5*2) = 12 หรือจะได้ 2X + 10 = 12 หรือจะได้ 2X = 2 ดังนั้น X จะเท่ากับ1 เป็นคำตอบของสมการ'),
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
