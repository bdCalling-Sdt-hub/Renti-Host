import 'package:flutter/material.dart';

class StartEndDate extends StatefulWidget {
   StartEndDate({super.key});

  @override
  State<StartEndDate> createState() => _StartEndDateState();
}

class _StartEndDateState extends State<StartEndDate> {
  List <String> date = ['05 aug, 2023','06 aug, 2023'];
  @override
  Widget build(BuildContext context) {

    return Container(
        width: MediaQuery.of(context).size.width,
        margin:  const EdgeInsetsDirectional.symmetric(horizontal: 4),
        padding:  const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 12),
        decoration: const BoxDecoration(
          border: BorderDirectional(
              top: BorderSide.none,
              bottom: BorderSide(color: Color(0xffE6E7F4),width:0.5),
              start: BorderSide(color: Color(0xffE6E7F4),width:0.5),
              end: BorderSide(color: Color(0xffE6E7F4),width:0.5)
          ),
        )

        ,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Start: ',
                    style: TextStyle(
                      color: Color(0xFF2E2C2C),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,

                    ),
                  ),
                  TextSpan(
                    text: date[0],
                    style: const TextStyle(
                      color: Color(0xFF2E2C2C),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'End: ',
                    style: TextStyle(
                      color: Color(0xFF2E2C2C),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: date[1],
                    style: const TextStyle(
                      color: Color(0xFF2E2C2C),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,

                    ),

                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
