import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:renti_host/view/screens/auth/signin_screen/signin_screen.dart';
import 'package:renti_host/view/screens/profile_screen/profile_screen.dart';

import 'package:renti_host/view/screens/select_language/select_language_screen.dart';
import 'package:renti_host/view/screens/settings_screen/settings_screen/settings_screen.dart';
import 'package:renti_host/view/screens/splash/inner_widgets/bottom_section.dart';

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
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xff000b90).withOpacity(0.6),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 24,top: 24),
                    child: Column(
                      children: [
                        const SizedBox(height:212 ,),
                        Container(
                          height: 198,
                          width: 198,
                          decoration:const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/logos/Logo.png'))
                          ),
                        ),
                        const SizedBox(height: 260,),
                       BottomSection()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
