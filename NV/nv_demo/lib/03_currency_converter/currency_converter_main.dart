import 'package:flutter/material.dart';

class CurrencyConverterMain extends StatefulWidget {
  const CurrencyConverterMain({super.key});

  @override
  State<CurrencyConverterMain> createState() => _CurrencyConverterMainState();
  
}

class _CurrencyConverterMainState extends State<CurrencyConverterMain> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  TextEditingController r1 = TextEditingController();
  TextEditingController r2 = TextEditingController();

  final _formKey = GlobalKey<FormState>();  
  int curr1 = -1;
  int curr2 = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  TextFormField(
                    controller: t1,
                    decoration: const InputDecoration(
                      labelText: 'Currency 1',
                      border: OutlineInputBorder(),
                    ),
                    validator: (text) => text!.isEmpty ? 'Enter Currency 1' : null,
                  ),
                  
                  const SizedBox(
                    height: 30,
                  ),
                  
                  TextFormField(
                    controller: t2,
                    decoration: const InputDecoration(
                      labelText: 'Currency 2',
                      border: OutlineInputBorder(),
                    ),
                    validator: (text) => text!.isEmpty ? 'Enter Currency 2' : null,
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  Text('Input Currency'),
                  ListTile(
                    title:  Text('INR'),
                    // leading: Radio(value: 4 , groupValue: curr1, onChanged:),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text("Convert "),
                  ),
                ],
              ),
            ),
          ),
        ],
      ) ,
    );
  }

  void convert(){

  }

  @override
  void dispose() {
    t1.dispose();
    t2.dispose();

    r1.dispose();
    r2.dispose();
    super.dispose();
  }
}