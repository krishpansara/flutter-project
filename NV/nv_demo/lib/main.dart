import 'package:flutter/material.dart';
import 'package:nv_demo/stop_watch/login_page.dart';
// import 'package:nv_demo/02_calculator/calc_demo.dart';
// import 'package:nv_demo/stop_watch/stop_watch.dart';
// import 'package:nv_demo/01_flutter/column_experiment.dart';
// import 'package:nv_demo/02_calculator/calculator.dart';
// import 'package:nv_demo/01_flutter/container_expeiment.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: CustomContainer(),
        // body:ColumnExperiment(),
        body:LoginScreen(),
        // body:CalculatorPart(),

        // body:Calculator(),


      ),
    );
  }
}
