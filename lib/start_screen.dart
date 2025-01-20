import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.hi, super.key});
  final void Function() hi;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // ?  IMAGE HERE:
          Image.asset(
            'assets/images/q2.png',
            width: 300,
            color: const Color.fromARGB(141, 248, 248, 0),
          ),
          // ? TEXT HERE:
          Text(
            'Flutter quiz! are you ready for it',
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
          SizedBox(
            height: 10,
          ),
          // ? BUTTON
          OutlinedButton.icon(
              onPressed: hi,
              icon: Icon(Icons.arrow_right_alt),
              label: Text("Start Quiz!"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              )
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: Colors.white,
              //   textStyle: TextStyle(fontWeight: FontWeight.bold),
              // ),
              ),
        ],
      ),
    );
  }
}
