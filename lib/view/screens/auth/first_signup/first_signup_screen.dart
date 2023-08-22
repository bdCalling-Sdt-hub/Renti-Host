import 'package:flutter/material.dart';

import 'package:renti_host/view/widgets/button/custom_button.dart';

import '../second_signup/second_signup_screen.dart';
import '../signin/signin_screen.dart';


class FirstSignUpScreen extends StatefulWidget {
  const FirstSignUpScreen({super.key});

  @override
  State<FirstSignUpScreen> createState() => _FirstSignUpScreenState();
}

class _FirstSignUpScreenState extends State<FirstSignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  int _radioGroupValue =0;
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
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>
                SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration:  const BoxDecoration(
                        color: Color(0xFFFBFBFB),
                        // color: Color(0xFFFBFBFB),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.zero,bottomRight: Radius.zero,topLeft: Radius.circular(8),topRight: Radius.circular(8))
                    ),
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
                                const Text(
                                  'Full Name',
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
                                    hintText: 'Type full name here...',
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
                                  'Email',
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
                                    hintText: 'Enter your email...',
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
                                    } else if (!value.contains(RegExp('\@'))) {
                                      return 'Please enter a valid email';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const  Text(
                                  'Gender',
                                  style: TextStyle(
                                      color: Color(0xFF2E2C2C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: _radioGroupValue,
                                          onChanged: (value) {
                                            setState(() {
                                              _radioGroupValue = value!;
                                            });
                                          },
                                        ),
                                        Text('Male')
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: 2,
                                          groupValue: _radioGroupValue,
                                          onChanged: (value) {
                                            setState(() {
                                              _radioGroupValue = value!;
                                            });
                                          },
                                        ),
                                        const Text('Female')
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: 3,
                                          groupValue: _radioGroupValue,
                                          onChanged: (value) {
                                            setState(() {
                                              _radioGroupValue = value!;
                                            });
                                          },
                                        ),
                                        const Text('Others')
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16,),
                                const Text(
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
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        style:const TextStyle(color: Color(0xFF2E2C2C)),
                                        maxLines: 1,
                                        keyboardType: TextInputType.text,
                                        decoration:const InputDecoration(
                                          fillColor: Color(0xFFFFFFFF),
                                          hintText: 'DD',
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
                                    Expanded(
                                      child: TextFormField(
                                        style:const TextStyle(color: Color(0xFF2E2C2C)),
                                        maxLines: 1,
                                        keyboardType: TextInputType.text,
                                        decoration:const InputDecoration(
                                          fillColor: Color(0xFFFFFFFF),
                                          hintText: 'MM',
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
                                    Expanded(
                                      child: TextFormField(
                                        style:const TextStyle(color: Color(0xFF2E2C2C)),
                                        maxLines: 1,
                                        keyboardType: TextInputType.text,
                                        decoration:const InputDecoration(
                                          fillColor: Color(0xFFFFFFFF),
                                          hintText: 'YY',
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
                                  ],
                                ),

                                const SizedBox(
                                  height: 16,
                                ),
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
                                TextFormField(
                                  style:const TextStyle(color: Color(0xFF2E2C2C)),
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
                                        borderSide:
                                        BorderSide(color: Colors.red)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFCCCCCC),
                                      ),
                                    ),
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
                                    } else if (value.length < 6) {
                                      return 'Password should be more than 6 characters';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                const SizedBox(height: 16,),
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
                                  style:const TextStyle(color: Color(0xFF2E2C2C)),
                                  maxLines: 1,
                                  keyboardType: TextInputType.text,
                                  decoration:const InputDecoration(
                                    fillColor: Color(0xFFFFFFFF),
                                    hintText: 'Type confirm password here...',
                                    hintStyle: TextStyle(
                                        letterSpacing: 1,
                                        color: Color(0xFFCCCCCC)),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.red)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFCCCCCC),
                                      ),
                                    ),
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
                                    } else if (value.length < 6) {
                                      return 'Password should be more than 6 characters';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
           bottomNavigationBar: CustomButton(
            buttonName: "Continue",
             buttonColor: Color(0xff000b90),
             onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondSignUpScreen()));
          },
        ),
      )
    );
  }
}
