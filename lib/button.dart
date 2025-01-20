import 'package:flutter/material.dart';
// import 'package:flutter_';

class Button extends StatelessWidget {
  @override
  const Button(
      {required this.text,
      required this.ontap,
      // required this.answerText,
      super.key});
  // String answerText;
  final void Function() ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40),
          backgroundColor: const Color.fromARGB(255, 69, 20, 101),
          foregroundColor: Colors.white),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
    // throw UnimplementedError();
  }
}
