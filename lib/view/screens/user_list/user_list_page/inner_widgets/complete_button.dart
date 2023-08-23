import 'package:flutter/material.dart';

class CompleteContainer extends StatelessWidget {
  const CompleteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71,
      padding:
      const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 4),
      decoration: ShapeDecoration(
        color: const Color(0xFFE6F6F4),
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(4)
        ),
      ),
      child: const Center(
        child: Text(
          'Complete',
          style: TextStyle(
            color: Color(0xFF00A991),
            fontSize: 10,
            fontWeight: FontWeight.w400,
            height: 1.40,
          ),
        ),
      ),
    );
  }
}
