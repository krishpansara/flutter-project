import 'dart:developer';

import 'package:flutter/material.dart';

class BmiCalcScreen extends StatefulWidget {
  const BmiCalcScreen({super.key});

  @override
  State<BmiCalcScreen> createState() => _BmiCalcScreenState();
}

class _BmiCalcScreenState extends State<BmiCalcScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double bmi = 0;
  String result = "";
  List colors = [
    // Color(0xd32f2e),
    Color(0xffd32f2e),

  ];
  bool isValidated = false;

  void bmiType(double wt, double ht) {
    bmi = wt / (ht * ht);

    if (bmi <= 16) {
      result = "Several Thickness";
    } else if (bmi < 17) {
      result = "Moderate Thickness";
    } else if (bmi < 18.5) {
      result = "Mild Thickness";
    } else if (bmi < 25) {
      result = "Normal";
    } else if (bmi < 30) {
      result = "Overweight";
    } else if (bmi < 35) {
      result = "Obese Class I";
    } else if (bmi < 40) {
      result = "Obese Class II";
    } else {
      result = "Obese Class III";
    }
  }

  void validate() {
    if (weightController.text.isNotEmpty && heightController.text.isNotEmpty) {
      isValidated = true;
    } else {
      isValidated = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calc'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (v) {
                validate();
              },
              controller: weightController,
              decoration: InputDecoration(
                labelText: "Weight in Kgs",
                hintText: "Enter your Weight in Kgs",
              ),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (v) {
                log("from heightController$v");
                validate();
              },
              controller: heightController,
              decoration: InputDecoration(
                labelText: "Height in Meters",
                hintText: "Enter your Height in Meters",
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: isValidated
                  ? () {
                      double wt = double.parse(weightController.text);
                      double ht = double.parse(heightController.text);
                      bmiType(wt, ht);
                      setState(() {});
                    }
                  : null,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              // 'Result : {$result}',
              'bmi:${bmi.toStringAsFixed(2)}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            Text(
              result,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              
            )
          ],
        ),
      ),
    );
  }
}
