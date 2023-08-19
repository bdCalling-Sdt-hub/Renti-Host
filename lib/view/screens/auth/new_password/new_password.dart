import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/auth/verify_otp_screen/verify_otp_screen.dart';
import 'package:renti_host/view/widgets/button/custom_button.dart';

class UpdatePassScreen extends StatefulWidget {
  const UpdatePassScreen({super.key});

  @override
  State<UpdatePassScreen> createState() => _New_PasswordState();
}

class _New_PasswordState extends State<UpdatePassScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: CustomButton(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>VerifyOtpScreen()));
        }, buttonName: "Reset", buttonColor: Color(0xff000B90)),
        backgroundColor: Color(0xFF000b90),
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const VerifyOtpScreen()));
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
            'Update Password',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body:  LayoutBuilder(
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
                      const  Text('Your password must have 8-10 characters.',style: TextStyle(
                          color: Color(0xFF2E2C2C),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),),

                      const SizedBox(height: 24,),
                      const Text(
                        'Password',
                        style: TextStyle(
                            color: Color(0xFF2E2C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
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
                            decoration:const InputDecoration(
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
                          const Text(
                            'Confirm Password',
                            style: TextStyle(
                                color: Color(0xFF2E2C2C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          TextFormField(
                            style: TextStyle(color: Color(0xFF2E2C2C)),
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            decoration:const InputDecoration(
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
