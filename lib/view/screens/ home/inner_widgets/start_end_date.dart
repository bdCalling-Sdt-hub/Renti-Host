import 'package:flutter/material.dart';

class StartEndDate extends StatefulWidget {
  const StartEndDate({super.key});

  @override
  State<StartEndDate> createState() => _StartEndDateState();
}

class _StartEndDateState extends State<StartEndDate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          border: BorderDirectional(
              top: BorderSide.none,
              bottom: BorderSide(color: Color(0xffE6E7F4), width: 1),
              start: BorderSide(color: Color(0xffE6E7F4), width: 1),
              end: BorderSide(color: Color(0xffE6E7F4), width: 1)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: 'start:',
                  style: TextStyle(
                    color: Color(0xFF2E2C2C),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                    text: ' 05 july 2023 ',
                    style: TextStyle(
                      color: Color(0xFF2E2C2C),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ))
              ])),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: 'end:',
                  style: TextStyle(
                    color: Color(0xFF2E2C2C),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                    text: ' 06 july 2023 ',
                    style: TextStyle(
                      color: Color(0xFF2E2C2C),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ))
              ])),
            ],
          ),
        ),
      ),
    );
  }
}
