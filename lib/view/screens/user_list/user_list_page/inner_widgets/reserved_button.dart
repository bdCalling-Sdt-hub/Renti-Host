import 'package:flutter/material.dart';

class ReservedContainer extends StatelessWidget {
  const ReservedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71,
      padding:
      const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 4),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFFFBE9EC),
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(
                4)),
      ),
      child: const Text(

        'Reserved',
        style: TextStyle(
          color: Color(0xFFD7263D),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
