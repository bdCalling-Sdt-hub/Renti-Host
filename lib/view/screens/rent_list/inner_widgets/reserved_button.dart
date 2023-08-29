import 'package:flutter/material.dart';

class ReservedButton extends StatelessWidget {
  const ReservedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71,
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: ShapeDecoration(
        color: const Color(0xFFFBE9EC),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4)),
      ),
      child: const Text(
        textAlign : TextAlign.center,
        "Reserved",
        style: TextStyle(
          color: Color(0xFFD7263D),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
