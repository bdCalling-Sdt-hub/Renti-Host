import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:renti_host/view/screens/auth/signin_screen/signin_screen.dart';

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
              child: SingleChildScrollView(
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
                      SizedBox(
                        height: 22,
                        width: 100,
                        child: Row(
                          children: [
                            const Text('English',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 16,fontWeight: FontWeight.w400,),),
                            IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>SelectLanguageScreen()));
                            }, icon:const Icon(Icons.arrow_forward_ios_rounded,color: Color(0xFFFFFFFF),size: 14,))
                          ],
                        ),
                      ),
                     const SizedBox(height: 24,),
                      SizedBox(
                        height: 57,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignInScreen()));
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
              ),
            ),
          )
      ),
    );
  }
}
