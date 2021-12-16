// // Open Source
// import 'dart:async';

// import 'package:flutter/material.dart';

// class Timers extends StatefulWidget {
//   const Timers({Key? key}) : super(key: key);

//   @override
//   _TimersState createState() => _TimersState();
// }

// class _TimersState extends State<Timers> {
//   var stopwatch = Stopwatch();
//   var display = '00:00:00';
//   Timer? timer;
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   void x() {
//     if (stopwatch.isRunning) {
//       stopwatch.stop();
//       display = stopwatch.elapsed.inSeconds.toString();
//       stopwatch.reset();
//     } else {
//       stopwatch.start();

//       timer = Timer.periodic(Duration(microseconds: 88), (_) {
//         setState(() {
//           var m = stopwatch.elapsed.inMinutes.toString().padLeft(2, '0');
//           var s = stopwatch.elapsed.inSeconds
//               .remainder(60)
//               .toString()
//               .padLeft(2, '0');
//           var ms = stopwatch.elapsed.inMilliseconds
//               .remainder(1000)
//               .toString()
//               .padLeft(2, '0');
//           display = m + ' : ' + s + ' : ' + ms;
//         });
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             Text(
//               display,
//               style: TextStyle(fontSize: 30),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
