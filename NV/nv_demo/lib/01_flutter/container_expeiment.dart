import 'package:flutter/material.dart';


class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color : Colors.blue,
              child : const Text(
                "Jay Shree Krishna",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';


// class CustomContainer extends StatelessWidget {
//   const CustomContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Center(
//         child: Container(
//           color: Colors.amber,
//           child: const Text("Hello from CustomContainer!"),
//         ),
//       ),
//     );
//   }
// }