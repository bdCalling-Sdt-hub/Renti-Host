import 'package:flutter/material.dart';

class TermConditionScreen extends StatefulWidget {
  const TermConditionScreen({super.key});

  @override
  State<TermConditionScreen> createState() => _TermConditionScreenState();
}

class _TermConditionScreenState extends State<TermConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(

      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        titleSpacing: -8,
        leading: IconButton(
          onPressed: () {

          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 14,
          ),
          color: const Color(0xff2E2C2C),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text(
          'Terms & Conditions',
          style: TextStyle(
              color: Color(0xFF2E2C2C),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
          const SingleChildScrollView(
            child: Padding(
                padding:  EdgeInsets.only(
                    left: 20,right: 20, bottom: 24,top: 24),
                child:Column(
                  children: [

                    Text('1. Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque masris.',
                      style: TextStyle(
                          color: Color(0xFF2E2C2C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 8,),
                    Text('2. Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque masris.',
                      style: TextStyle(
                          color: Color(0xFF2E2C2C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 8,),
                    Text('3. Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque masris.',
                      style: TextStyle(
                          color: Color(0xFF2E2C2C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 8,),
                    Text('4. Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque masris.',
                      style: TextStyle(
                          color: Color(0xFF2E2C2C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 8,),
                    Text('5. Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque masris.',
                      style: TextStyle(
                          color: Color(0xFF2E2C2C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 8,),
                  ],
                )
            ),
          )),
    ));
  }
}
