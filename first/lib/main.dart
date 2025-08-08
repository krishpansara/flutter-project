// import 'package:first/notes_app/notes.dart';
// import 'package:first/e-com/login_page.dart';
// import 'package:first/bmi/screens/bmi_calc.dart';
import 'package:first/counter/counter_screen.dart';
// import 'package:first/e-com/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'e-com/cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecom App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: CartPage(),
      // home: NotesScreen(),
      // home: LoginPage(),
      // home: SplashScreen(),
      // home: BmiCalcScreen(),
      home: CounterScreen(),

    );
  }
}




/*
create quiz app with following screens 
start screen with instruction and start button
, quiz screen display questions and four options as button lso on top display score and add bottom button for next or complete
to display quiz score with details
*/