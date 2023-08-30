import 'package:flutter/material.dart';

import '../kyc/kyc_screen.dart';
import '../signin/sign_in_screen.dart';

class SecondSignUpScreen extends StatefulWidget {
  const SecondSignUpScreen({super.key});

  @override
  State<SecondSignUpScreen> createState() => _SecondSignUpScreenState();
}

class _SecondSignUpScreenState extends State<SecondSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return  SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xff000b90) ,
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignInScreen()));
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
            'Sign Up',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body:  LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>
                Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration:  const BoxDecoration(
                        color: Color(0xFFFBFBFB),
                        // color: Color(0xFFFBFBFB),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.zero,bottomRight: Radius.zero,topLeft: Radius.circular(8),topRight: Radius.circular(8))
                    ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 24, top: 24),
                      child: Column(
                        children: [
                          Form(

                            key: _formKey,
                            autovalidateMode: AutovalidateMode.always,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const  Text(
                                  'Date of Birth',
                                  style: TextStyle(
                                      color: Color(0xFF2E2C2C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: 58,
                                        width: 108,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                              color: Color(0xFFCCCCCC)
                                          )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(14.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 40,
                                                child: Image.asset('assets/logos/flag.png'),

                                              ),
                                              const SizedBox(width: 12,),
                                              const Text('+52', style: TextStyle(
                                                  color: Color(0xFFCCCCCC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),)
                                            ],
                                          ),
                                        ),
                                      )
                                    ),
                                    const SizedBox(width: 10,),
                                    Expanded(
                                      flex: 2,
                                      child: TextFormField(
                                        style: TextStyle(color: Color(0xFF2E2C2C)),
                                        maxLines: 1,
                                        keyboardType: TextInputType.text,
                                        decoration:const InputDecoration(
                                          fillColor: Color(0xFFFFFFFF),
                                          hintText: 'Type mobile number...',
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

                                      ),
                                    ),
                                    const SizedBox(width: 10,),

                                  ],
                                ),
                                const SizedBox(height: 16,),
                                const Text(
                                  'Address',
                                  style: TextStyle(
                                      color: Color(0xFF2E2C2C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                TextFormField(
                                  style:const TextStyle(color: Color(0xFF2E2C2C)),
                                  maxLines: 5,
                                  keyboardType: TextInputType.text,
                                  decoration:const InputDecoration(
                                    fillColor: Color(0xFFFFFFFF),
                                    hintText: 'Type card number here...',
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

                                ),
                                const SizedBox(height: 16,),
                                const Text(
                                  'Credit Card Number',
                                  style: TextStyle(
                                      color: Color(0xFF2E2C2C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                const  SizedBox(
                                  height: 12,
                                ),
                                TextFormField(
                                  style:const TextStyle(color: Color(0xFF2E2C2C)),
                                  maxLines: 1,
                                  keyboardType: TextInputType.text,
                                  decoration:const InputDecoration(
                                    fillColor: Color(0xFFFFFFFF),
                                    hintText: 'Type card number here...',
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

                                ),
                                const  SizedBox(height: 16,),
                                const Text(
                                  'Expire Date',
                                  style: TextStyle(
                                      color: Color(0xFF2E2C2C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                TextFormField(
                                  style:const TextStyle(color: Color(0xFF2E2C2C)),
                                  maxLines: 1,
                                  keyboardType: TextInputType.text,
                                  decoration:const InputDecoration(
                                    fillColor: Color(0xFFFFFFFF),
                                    hintText: 'MM-YY',
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

                                ),
                                const SizedBox(height: 16,),
                                const Text(
                                  'CVV',
                                  style: TextStyle(
                                      color: Color(0xFF2E2C2C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                TextFormField(
                                  style:const TextStyle(color: Color(0xFF2E2C2C)),
                                  maxLines: 1,
                                  keyboardType: TextInputType.text,
                                  decoration:const InputDecoration(
                                    fillColor: Color(0xFFFFFFFF),
                                    hintText: 'Type CVV here...',
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

                                ),
                              ],
                            ),
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
