import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/select_language/select_language_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(

          body: LayoutBuilder(
            builder:(BuildContext context, BoxConstraints constraints) => Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/backgroundimg.png'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(Color(0xff000B90).withOpacity(0.6), BlendMode.dstATop)
                )
              ),
              child: Column(

                children: [
                  SizedBox(height:212 ,),
                  Container(
                    height: 198,
                    width: 198,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/logos/Logo.png'))
                    ),
                  ),
                  SizedBox(height: 330,),
                  SizedBox(
                    height: 57,
                    width: 350,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>SelectLanguageScreen()));
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(color: Color(0xff000B90),fontSize: 18,fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          backgroundColor: Color(0xFFFFFFFF),
                        )),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
