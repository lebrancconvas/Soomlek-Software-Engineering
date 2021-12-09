// import 'dart:math' as math;

// var rand = math.Random();
// String quest = '';

// class Question {
//   String? question = quest;
//   List<String>? options;
//   String? answer;

//   Question({this.question, this.options, this.answer});

//   static List<Question> questionList = [];
// }

// PLO() {
//   int random;
//   while (true) {
//     random = rand.nextInt(3) + 1;
//     if (random == 1)
//       Linear1();
//     else if (random == 2)
//       Parabola1();
//     else
//       Optimization1();
//   }
// }

// Parabola1() {
//   int a = rand.nextInt(12) + 1;
//   int b = rand.nextInt(12) + 1;
//   int c = rand.nextInt(12) + 1;
//   int d = rand.nextInt(12) + 1;
//   String? element;
//   String integrate = '';
//   int add = 0;
//   int minusAdd = 0;
//   int num = 0;
//   // (ax + b)(cx + d) = acx^2 + (ad + bc)x + bd
//   element = "(${a}x + $b)(${c}x + $d)";
//   integrate = '${a * c}x^2 + ${(a * d) + (b * c)}x + ${b * d}';
//   add = rand.nextInt(10);
//   minusAdd = rand.nextInt(10);
//   num = rand.nextInt(4);
//   String element_sudo1 =
//       "(${a - add + minusAdd}x + ${b + add - minusAdd})(${c - add + minusAdd}x + ${d + add - minusAdd})";
//   String integrate_sudo1 =
//       '${a * c - num}x^2 + ${(a * d) + (b * c) - add + minusAdd - 2}x + ${b * d + add - minusAdd + 2}';

//   add = rand.nextInt(10);
//   minusAdd = rand.nextInt(10);
//   String element_sudo2 =
//       "(${a - add + minusAdd}x + ${b + add - minusAdd})(${c - add + minusAdd}x + ${d + add - minusAdd})";
//   String integrate_sudo2 =
//       '${a * c + num}x^2 + ${(a * d) + (b * c) - add + minusAdd + 3}x + ${b * d + add - minusAdd - 1}';

//   add = rand.nextInt(10);
//   minusAdd = rand.nextInt(10);
//   String element_sudo3 =
//       "(${a - add + minusAdd}x + ${b + add - minusAdd})(${c - add + minusAdd}x + ${d + add - minusAdd})";
//   String integrate_sudo3 =
//       '${a * c + num - 1}x^2 + ${(a * d) + (b * c) - add + minusAdd + 1}x + ${b * d + add - minusAdd - 3}';

//   int num_List = rand.nextInt(4) + 1;
//   int ques = rand.nextInt(2) + 1;
//   String quest1 = "ถ้ากำนดให้ $element แล้ว ค่าของผลคูณจะเท่ากับข้อใด ?";
//   String quest2 = "ถ้ากำนดให้ $integrate แล้ว จงหาค่าของการแยกตัวประกอบ ?";

//   if (ques == 1) {
//     quest = "ถ้ากำนดให้ $element แล้ว ค่าของผลคูณจะเท่ากับข้อใด ?";
//     if (num_List == 1) {
//       Question(
//         question:
//             quest, //"ถ้ากำนดให้ $element แล้ว ค่าของผลคูณจะเท่ากับข้อใด ?",
//         options: [integrate, integrate_sudo1, integrate_sudo2, integrate_sudo3],
//         answer: integrate,
//       );
//     } else if (num_List == 2) {
//       Question(
//         question:
//             quest, //"ถ้ากำนดให้ $element แล้ว ค่าของผลคูณจะเท่ากับข้อใด ?",
//         options: [integrate_sudo1, integrate, integrate_sudo2, integrate_sudo3],
//         answer: integrate,
//       );
//     } else if (num_List == 3) {
//       Question(
//         question:
//             quest, //"ถ้ากำนดให้ $element แล้ว ค่าของผลคูณจะเท่ากับข้อใด ?",
//         options: [integrate_sudo1, integrate_sudo2, integrate, integrate_sudo3],
//         answer: integrate,
//       );
//     } else {
//       Question(
//         question:
//             quest, //"ถ้ากำนดให้ $element แล้ว ค่าของผลคูณจะเท่ากับข้อใด ?",
//         options: [integrate_sudo1, integrate_sudo2, integrate_sudo3, integrate],
//         answer: integrate,
//       );
//     }
//   } else {
//     quest = "ถ้ากำนดให้ $integrate แล้ว จงหาค่าของการแยกตัวประกอบ ?";
//     if (num_List == 1) {
//       Question(
//         question:
//             quest, //"ถ้ากำนดให้ $integrate แล้ว จงหาค่าของการแยกตัวประกอบ ?",
//         options: [element, element_sudo1, element_sudo2, element_sudo3],
//         answer: element,
//       );
//     } else if (num_List == 2) {
//       Question(
//         question:
//             quest, //"ถ้ากำนดให้ $integrate แล้ว จงหาค่าของการแยกตัวประกอบ ?",
//         options: [element_sudo1, element, element_sudo2, element_sudo3],
//         answer: element,
//       );
//     } else if (num_List == 3) {
//       Question(
//         question:
//             quest, //"ถ้ากำนดให้ $integrate แล้ว จงหาค่าของการแยกตัวประกอบ ?",
//         options: [element_sudo1, element_sudo2, element, element_sudo3],
//         answer: element,
//       );
//     } else {
//       Question(
//         question:
//             quest, //"ถ้ากำนดให้ $integrate แล้ว จงหาค่าของการแยกตัวประกอบ ?",
//         options: [element_sudo1, element_sudo2, element_sudo3, element],
//         answer: element,
//       );
//     }
//   }
// }

// Linear1() {
//   var rand = new math.Random();
//   int a = rand.nextInt(100) + 1;
//   int b = a * (rand.nextInt(10) + 1);
//   String question = '${a}x = $b';

//   double ab = b / a;
//   int x = ab.toInt();

//   int x_sudo1 = x + rand.nextInt(6);
//   int x_sudo2 = x - rand.nextInt(5);
//   int x_sudo3 = x + rand.nextInt(5);

//   int num_List = rand.nextInt(4) + 1;

//   quest = "ถ้า $question แล้ว ค่าของ x เท่ากับข้อใด ?";
//   if (num_List == 1) {
//     Question(
//       question: quest, //"ถ้า $question แล้ว ค่าของ x เท่ากับข้อใด ?",
//       options: ["x = $x", "x = $x_sudo1", "x = $x_sudo2", "x = $x_sudo3"],
//       answer: "x = $x",
//     );
//   } else if (num_List == 2) {
//     Question(
//       question: quest, //"ถ้า $question แล้ว ค่าของ x เท่ากับข้อใด ?",
//       options: ["x = $x_sudo1", "x = $x", "x = $x_sudo2", "x = $x_sudo3"],
//       answer: "x = $x",
//     );
//   } else if (num_List == 3) {
//     Question(
//       question: quest, //"ถ้า $question แล้ว ค่าของ x เท่ากับข้อใด ?",
//       options: ["x = $x_sudo1", "x = $x_sudo2", "x = $x", "x = $x_sudo3"],
//       answer: "x = $x",
//     );
//   } else {
//     Question(
//       question: quest, //"ถ้า $question แล้ว ค่าของ x เท่ากับข้อใด ?",
//       options: ["x = $x_sudo1", "x = $x_sudo2", "x = $x_sudo3", "x = $x"],
//       answer: "x = $x",
//     );
//   }
// }

// Optimization1() {
//   var rand = new math.Random();

//   // ax + by = c
//   // dx + ey = f
//   int x = rand.nextInt(10) + 1;
//   int y = rand.nextInt(10) + 1;

//   int a = rand.nextInt(20) + 1;
//   int b = rand.nextInt(20) + 1;
//   int c = (a * x) + (b * y);

//   int d = rand.nextInt(20) + 1;
//   int e = rand.nextInt(20) + 1;
//   int f = (d * x) + (e * y);

//   String equation1 = "${a}x + ${b}y = $c";
//   String equation2 = '${d}x + ${e}y = $f';
//   int addX = rand.nextInt(5);
//   int minusAddX = rand.nextInt(5);
//   int addY = rand.nextInt(5);
//   int minusAddY = rand.nextInt(5);

//   int x_sudo1 = x + addX - minusAddX;
//   int y_sudo1 = y + addY - minusAddY;

//   int x_sudo2 = x - addX + minusAddX;
//   int y_sudo2 = y - addY + minusAddY;

//   int x_sudo3 = x + addY - addX;
//   int y_sudo3 = y + addX - addY;

//   int ques = rand.nextInt(3) + 1;
//   int num_List = rand.nextInt(4) + 1;

//   if (ques == 1) {
//     quest =
//         "ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว ค่าของ x และ y คือข้อใด ?";
//     if (num_List == 1) {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว ค่าของ x และ y คือข้อใด ?",
//         options: [
//           "x = $x , y = $y",
//           "x = $x_sudo1 , y = $y_sudo1",
//           "x = $x_sudo2 , y = $y_sudo2",
//           "x = $x_sudo3 , y = $y_sudo3"
//         ],
//         answer: "x = $x , y = $y",
//       );
//     } else if (num_List == 2) {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว ค่าของ x และ y คือข้อใด ?",
//         options: [
//           "x = $x_sudo1 , y = $y_sudo1",
//           "x = $x , y = $y",
//           "x = $x_sudo2 , y = $y_sudo2",
//           "x = $x_sudo3 , y = $y_sudo3"
//         ],
//         answer: "x = $x , y = $y",
//       );
//     } else if (num_List == 3) {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว ค่าของ x และ y คือข้อใด ?",
//         options: [
//           "x = $x_sudo1 , y = $y_sudo1",
//           "x = $x_sudo2 , y = $y_sudo2",
//           "x = $x , y = $y",
//           "x = $x_sudo3 , y = $y_sudo3"
//         ],
//         answer: "x = $x , y = $y",
//       );
//     } else {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว ค่าของ x และ y คือข้อใด ?",
//         options: [
//           "x = $x_sudo1 , y = $y_sudo1",
//           "x = $x_sudo2 , y = $y_sudo2",
//           "x = $x_sudo3 , y = $y_sudo3",
//           "x = $x , y = $y"
//         ],
//         answer: "x = $x , y = $y",
//       );
//     }
//   } else if (ques == 2) {
//     quest =
//         "ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว จงหาค่าของตัวแปร x";
//     if (num_List == 1) {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว จงหาค่าของตัวแปร x",
//         options: ["x = $x", "x = $x_sudo1", "x = $x_sudo2", "x = $x_sudo3"],
//         answer: "x = $x",
//       );
//     } else if (num_List == 2) {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว จงหาค่าของตัวแปร x",
//         options: ["x = $x_sudo1", "x = $x", "x = $x_sudo2", "x = $x_sudo3"],
//         answer: "x = $x",
//       );
//     } else if (num_List == 3) {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว จงหาค่าของตัวแปร x",
//         options: ["x = $x_sudo1", "x = $x_sudo2", "x = $x", "x = $x_sudo3"],
//         answer: "x = $x",
//       );
//     } else {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว จงหาค่าของตัวแปร x",
//         options: ["x = $x_sudo1", "x = $x_sudo2", "x = $x_sudo3", "x = $x"],
//         answer: "x = $x",
//       );
//     }
//   } else {
//     quest =
//         "ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว จงหาค่าของตัวแปร y";
//     if (num_List == 1) {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว จงหาค่าของตัวแปร y",
//         options: ["y = $y", "y = $y_sudo1", "y = $y_sudo2", "y = $y_sudo3"],
//         answer: "y = $y",
//       );
//     } else if (num_List == 2) {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว จงหาค่าของตัวแปร y",
//         options: ["y = $y_sudo1", "y = $y", "y = $y_sudo2", "y = $y_sudo3"],
//         answer: "y = $y",
//       );
//     } else if (num_List == 3) {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว จงหาค่าของตัวแปร y",
//         options: ["y = $y_sudo1", "y = $y_sudo2", "y = $y", "y = $y_sudo3"],
//         answer: "y = $y",
//       );
//     } else {
//       Question(
//         question:
//             quest, //"ถ้าสมการที่1 คือ $equation1 และ สมการที่2 คือ $equation2 แล้ว จงหาค่าของตัวแปร y",
//         options: ["y = $y_sudo1", "y = $y_sudo2", "y = $y_sudo3", "y = $y"],
//         answer: "y = $y",
//       );
//     }
//   }
// }
