import 'package:flutter/material.dart';

import '../signin_screen/signin_screen.dart';

class SecondSignUpScreen extends StatefulWidget {
  const SecondSignUpScreen({super.key});

  @override
  State<SecondSignUpScreen> createState() => _SecondSignUpScreenState();
}

class _SecondSignUpScreenState extends State<SecondSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return  Scaffold(
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
      body:  LayoutBuilder(
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
                                  flex: 1,
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
                                  flex: 2,
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

                              ],
                            ),
                            SizedBox(height: 16,),







                            SizedBox(
                              height: 57,
                              width: 350,
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      print('successful');
                                    } else {
                                      print('Failed');
                                    }
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
    );
  }
}
