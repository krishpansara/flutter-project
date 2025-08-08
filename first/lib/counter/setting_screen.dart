import 'package:first/counter/conter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});
  CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller.limitTxtController,
                  decoration: InputDecoration(
                    hintText: 'Enter any number as limit',
                    labelText: 'Total Capacity',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  controller.saveLimit();
                },
                icon: Icon(Icons.save),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
