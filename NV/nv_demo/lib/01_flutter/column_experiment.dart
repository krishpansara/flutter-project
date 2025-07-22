import 'package:flutter/material.dart';


class ColumnExperiment extends StatelessWidget {
  const ColumnExperiment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hello!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black
            ),
            ),
            SizedBox(height: 20),
            Text('Welcome to the Column Experiment',
              style: TextStyle(fontSize: 18, color: Colors.blue)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text('B1'),
                  )
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text('B1'),
                  )
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text('B1'),
                  )
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text('B1'),
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}