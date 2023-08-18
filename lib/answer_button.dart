// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String buttonTitle;
  final void Function() onTap;

  const AnswerButton({
    super.key,
    required this.buttonTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          backgroundColor: const Color.fromARGB(255, 25, 2, 79),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          buttonTitle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
