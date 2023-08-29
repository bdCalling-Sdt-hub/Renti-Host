import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key,

    required this.onTap,
    required this.buttonName,
    required this.buttonColor,
     this.textColor
  });
  final VoidCallback ? onTap;
  final String buttonName;
  final Color  buttonColor;
     final Color ? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        color:  const Color(0xFFFfFfFf),
        padding:EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
        width: MediaQuery.of(context).size.width,
        child:  SizedBox(
          height: 57,
          width: MediaQuery.of(context).size.width,

          child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                   elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(5)),
                  backgroundColor: buttonColor
              ),
              child: Text(
                buttonName,
                style:  TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
        )
    );
  }
}