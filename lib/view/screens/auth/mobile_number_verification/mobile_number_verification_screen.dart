import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:renti_host/view/screens/auth/email_verification/email_verification_screen.dart';
import '../select_photo/select_photo_screen.dart';

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
        extendBody: true,
        backgroundColor: Color(0xff000b90) ,
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
                        keyboardType: TextInputType.number,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        textStyle:  TextStyle(
                          color: Color(0xFF2E2C2C),
                          fontSize: 14,

                          fontWeight: FontWeight.w400,
                        ),
                        pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            disabledColor: Colors.blue,
                            fieldHeight: 56,
                            fieldWidth: 44,
                            activeColor: Color(0xFFCCCCCC),
                            inactiveColor:  Color(0xFFCCCCCC),
                            activeFillColor:  Color(0xFFCCCCCC),
                            inactiveFillColor:  Color(0xFFCCCCCC),
                            selectedFillColor:  Color(0xFFCCCCCC),
                            selectedColor: Color(0xFFCCCCCC)),
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
                        height: 16,
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
                            child:const Text('Resend OTP',style: TextStyle(
                                color: Color(0xFF000B90),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),



                    ],
                  ),
                ),
              ),
            )
        ),

      ),

    );
  }
}
