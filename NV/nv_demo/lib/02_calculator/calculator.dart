import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  Calculator({super.key});
  final TextEditingController _controller = TextEditingController(text: '0');
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 200,
              child: Container(
                child: Text(
                  "Calculator",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
            Container(
              height: 126,
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextField(
                        controller: _controller,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            rowcontain(),
            SizedBox(height: 20),
            Divider(color: Colors.grey, thickness: 3, indent: 5, endIndent: 5),
            SizedBox(height: 20),
            Container(
              height: 450,
              child: Column(
                children: [
                  row1contain(),
                  SizedBox(height: 10),
                  row2contain(),
                  SizedBox(height: 10),
                  row3contain(),
                  SizedBox(height: 10),
                  row4contain(),
                  SizedBox(height: 10),
                  row5contain(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row row5contain() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "+/-",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "0",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                ".",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.lightBlue,
              ),
              child: Text(
                "=",
                style: TextStyle(color: Colors.black, fontSize: 35),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row row4contain() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "1",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "2",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "3",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Icon(Icons.add, size: 35, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }

  Row row3contain() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "4",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "5",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "6",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: Icon(Icons.remove, size: 35, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

Row row1contain() {
  return Row(
    children: [
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text("C", style: TextStyle(color: Colors.red, fontSize: 30)),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "()",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "%",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "/",
              style: TextStyle(fontSize: 45, color: Colors.black),
            ),
          ),
        ),
      ),
    ],
  );
}

Row rowcontain() {
  return Row(
    children: [
      SizedBox(
        height: 50,
        width: 50,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey, // set background color
          ),
          child:
              // IconButton(onPressed: () {}, icon: Icon(Icons.lock_clock)),
              Text("A", style: TextStyle(color: Colors.white)),
        ),
      ),

      SizedBox(width: 10),
      SizedBox(
        height: 50,
        width: 50,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey, // set background color
          ),
          child: Text("A", style: TextStyle(color: Colors.white)),
        ),
      ),
      SizedBox(width: 10),
      SizedBox(
        height: 50,
        width: 50,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey, // set background color
          ),
          child: Text("A", style: TextStyle(color: Colors.white)),
        ),
      ),
      SizedBox(width: 110),
      SizedBox(
        height: 60,
        width: 60,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black, // set background color
          ),
          child: Icon(Icons.backspace, size: 25, color: Colors.white),
        ),
      ),
    ],
  );
}

Row row2contain() {
  return Row(
    children: [
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "7",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "8",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Text(
              "9",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 75,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.grey,
            ),
            child: Icon(Icons.close, size: 35, color: Colors.black),
          ),
        ),
      ),
    ],
  );
}