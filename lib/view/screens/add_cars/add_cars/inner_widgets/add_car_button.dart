import 'package:flutter/material.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color(0xff000B90),
            borderRadius: BorderRadius.circular(8)),
        child: const Padding(
          padding:
          EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
              child: Text(
                "Continue",
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
        ),

      ),
    );
  }
}
