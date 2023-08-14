import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/auth/second_signup_screen/second_signup_screen.dart';

import '../signin_screen/signin_screen.dart';

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
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>SignInScreen()));
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
                              Text(
                                'Full Name',
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
                              SizedBox(height: 16,),
                              Text(
                                'Email',
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
                              SizedBox(
                                height: 16,
                              ),
                              Text(
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
                                      Text('Female')
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
                                      Text('Others')
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 16,),
                              Text(
                                'Date of Birth',
                                style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      style: TextStyle(color: Color(0xFF2E2C2C)),
                                      maxLines: 1,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
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
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: TextFormField(
                                      style: TextStyle(color: Color(0xFF2E2C2C)),
                                      maxLines: 1,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
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
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: TextFormField(
                                      style: TextStyle(color: Color(0xFF2E2C2C)),
                                      maxLines: 1,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
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

                              SizedBox(
                                height: 16,
                              ),
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
                              SizedBox(height: 16,),
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
                              SizedBox(
                                height: 16,
                              ),



                              SizedBox(
                                height: 57,
                                width: 350,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondSignUpScreen()));
                                    },
                                    child: Text(
                                      'Sign Up',
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






                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
