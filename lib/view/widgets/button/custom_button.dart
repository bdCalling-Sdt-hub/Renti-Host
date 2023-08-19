import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,

    required this.onTap,
    required this.buttonName,
    required this.buttonColor

  });
  final VoidCallback ? onTap;
  final String buttonName;
  final Color  buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        color:  Color(0xFFFBFBFB),
        padding: const EdgeInsetsDirectional.only(top: 24, bottom: 24,start: 20,end: 20),
        width: MediaQuery.of(context).size.width,
        child:  SizedBox(
          height: 57,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(5)),
                    backgroundColor: buttonColor
              ),
              child:  Text(
                buttonName,
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
        )
    );
  }
}
