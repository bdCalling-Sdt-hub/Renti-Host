import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:renti_host/view/screens/auth/email_verification_screen/email_verification_screen.dart';
import 'package:renti_host/view/screens/auth/select_photo_screen/select_photo_screen.dart';

class MobileNumberVerificationScreen extends StatefulWidget {
  const MobileNumberVerificationScreen({super.key});

  @override
  State<MobileNumberVerificationScreen> createState() => _MobileNumberVerificationScreenState();
}

class _MobileNumberVerificationScreenState extends State<MobileNumberVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0xFFFFFFFF),
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const SelectPhotoScreen()));
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
            'Mobile Number Verification',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>SingleChildScrollView(
              child: Padding(
                padding:const  EdgeInsets.only(
                    left: 20, right: 20, bottom: 24, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text('''We have sent you an OTP code on your mobile number. Please enter the OTP code.''',style: TextStyle(
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
                    const SizedBox(height: 48,),
                    PinCodeTextField(
                      length: 6,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          disabledColor: Colors.blue,
                          fieldHeight: 40,
                          fieldWidth: 30,
                          activeFillColor: const Color(0xffFFFFFF),
                          inactiveFillColor: const Color(0xffFFFFFF),
                          selectedFillColor: const Color(0xffFFFFFF),
                          selectedColor:const Color(0xffFFFFFF)),
                      animationDuration: const Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: false,
                      onCompleted: (v) {},
                      onChanged: (value) {},
                      beforeTextPaste: (text) {
                        return true;
                      },
                      appContext: context,
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Did not get the Email?',style: TextStyle(
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

                    const SizedBox(
                      height: 320,
                    ),
                    SizedBox(
                      height: 57,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const EmailVerificationScreen()));
                          },
                          child:  Text(
                            'Verify',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(5)),
                            backgroundColor: Color(0xFF000B90),
                          )),
                    ),

                  ],
                ),
              ),

            )
        ),
      ),
    );
  }
}
