import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/auth/verify_otp_screen/verify_otp_screen.dart';

class New_Password extends StatefulWidget {
  const New_Password({super.key});

  @override
  State<New_Password> createState() => _New_PasswordState();
}

class _New_PasswordState extends State<New_Password> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>VerifyOtpScreen()));
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
            'Forgot Password',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body:  LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.only(
                    left: 20, right: 20, bottom: 24, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Your password must have 8-10 characters.',style: TextStyle(
                        color: Color(0xFF2E2C2C),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),),

                    SizedBox(height: 24,),
                    Text(
                      'Password',
                      style: TextStyle(
                          color: Color(0xFF2E2C2C),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.always,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          style: TextStyle(color: Color(0xFF2E2C2C)),
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Color(0xFFFFFFFF),
                            hintText: 'Type password here...',
                            hintStyle: TextStyle(
                                letterSpacing: 1,
                                color: Color(0xFFCCCCCC)),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide()),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFCCCCCC),
                                )),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFCCCCCC),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0xFFCCCCCC))),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'this field can not be empty';
                            } else if (value.length<6) {
                              return 'Please enter a valid email';
                            } else {
                              return null;
                            }
                          },
                        ),
                        Text(
                          'Confirm Password',
                          style: TextStyle(
                              color: Color(0xFF2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          style: TextStyle(color: Color(0xFF2E2C2C)),
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Color(0xFFFFFFFF),
                            hintText: 'Type Confirm password here...',
                            hintStyle: TextStyle(
                                letterSpacing: 1,
                                color: Color(0xFFCCCCCC)),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide()),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFCCCCCC),
                                )),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFCCCCCC),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0xFFCCCCCC))),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'this field can not be empty';
                            } else if (value.length<6) {
                              return 'Please enter a valid email';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ],
                    )),
                    SizedBox(
                      height: 370,
                    ),
                    SizedBox(
                      height: 57,
                      width: 350,
                      child: ElevatedButton(
                          onPressed: () {

                          },
                          child: Text(
                            'Reset',
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
