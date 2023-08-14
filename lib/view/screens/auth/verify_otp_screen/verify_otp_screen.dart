import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:renti_host/view/screens/auth/forgot_password_screen/forgot_password_screen.dart';
import 'package:renti_host/view/screens/auth/new_password/new_password.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Forgot_Password_Screen()));
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
            'Verify Otp',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.only(
                    left: 20, right: 20, bottom: 24, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Please enter the OTP code.',style: TextStyle(
                        color: Color(0xFF2E2C2C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),),
                    SizedBox(height: 24,),
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
                    SizedBox(height: 48,),
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
                          activeFillColor:  Color(0xffFFFFFF),
                          inactiveFillColor:  Color(0xffFFFFFF),
                          selectedFillColor:  Color(0xffFFFFFF),
                          selectedColor: Color(0xffFFFFFF)),
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
                    SizedBox(
                      height: 26,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Did not get the OTP?',style: TextStyle(
                            color: Color(0xFF2E2C2C),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),),
                        GestureDetector(
                          onTap: (){},
                          child: Text('Resend OTP',style: TextStyle(
                              color: Color(0xFF000B90),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 305,
                    ),
                    SizedBox(
                      height: 57,
                      width: 350,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>New_Password()));
                          },
                          child: Text(
                            'Continue',
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
