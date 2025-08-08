import 'package:first/quiz/screens/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Quiz App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Instructions:\n'
              '1. You will be presented with a series of questions.\n'
              '2. Choose the correct answer from the options provided.\n'
              '3. Your score will be displayed at the end of the quiz.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Get.to(QuizScreen());
              },
              child: Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}