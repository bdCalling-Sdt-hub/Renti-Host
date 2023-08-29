import 'package:flutter/material.dart';

class ActiveButton extends StatelessWidget {
  const ActiveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71,
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: ShapeDecoration(
        color:  const Color(0xFFE6F6F4),
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(4)),
      ),
      child: const Text(
        textAlign : TextAlign.center,
        "Active",
        style: TextStyle(
          color: Color(0xFF00A991),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
