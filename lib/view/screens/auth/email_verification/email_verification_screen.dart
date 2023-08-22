import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/auth/mobile_number_verification_screen/mobile_number_verification_screen.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Color(0xff000b90) ,
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>MobileNumberVerificationScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 14,
            ),
            color: const Color(0xFfFFFFFF),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF000B90),
          title: const Text(
            'Email Verification',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration:  const BoxDecoration(
                    color: Color(0xFFFBFBFB),
                    // color: Color(0xFFFBFBFB),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.zero,bottomRight: Radius.zero,topLeft: Radius.circular(8),topRight: Radius.circular(8))
                ),

                child: Padding(
                  padding:const  EdgeInsets.only(
                      left: 20, right: 20, bottom: 24, top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text('We have sent you a link on your email address. Please check for confirm your account.',style: TextStyle(
                          color: Color(0xFF2E2C2C),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),),
                      const SizedBox(height: 24,),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 100,
                          width: 100,

                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF000B90),
                              image: DecorationImage(
                                  image:AssetImage('assets/images/otpbox.png',),
                                  scale: 4
                              )
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Did not get the email?',style: TextStyle(
                              color: Color(0xFF2E2C2C),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),),
                          GestureDetector(
                            onTap: (){},
                            child:const Text('Resend Email',style: TextStyle(
                                color: Color(0xFF000B90),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ],
                  )
                ),
              ),

            )
        ),
      ),
    );
  }
}
