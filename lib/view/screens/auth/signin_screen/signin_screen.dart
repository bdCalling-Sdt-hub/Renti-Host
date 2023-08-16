import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/auth/first_signup_screen/first_signup_screen.dart';
import 'package:renti_host/view/screens/auth/forgot_password_screen/forgot_password_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 14,
            ),
            color: const Color(0xFfFFFFFF),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF000B90),
          title: const Text(
            'Sign In',
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
                              const Text(
                                'Email',
                                style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const  SizedBox(
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
                              const  SizedBox(
                                height: 16,
                              ),
                              const Text(
                                'Password',
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
                              const SizedBox(
                                height: 16,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Forgot_Password_Screen()));
                                },
                                child:const Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text('Forgot Password?',
                                      style: TextStyle(
                                          color: Color(0xFF000B90),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                              const  SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                height: 57,
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        print('successful');
                                      } else {
                                        print('Failed');
                                      }
                                    },
                                    child: Text(
                                      'Sign In',
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
                        const SizedBox(
                          height: 24,
                        ),
                        const Align(
                            alignment: Alignment.center,
                            child: Text('Or',
                                style: TextStyle(
                                    color: Color(0xff2E2C2C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400))),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 46,
                                  width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  border: Border.all(
                                      width: 1, color: Color(0xFFE6E7F4)),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/logos/google.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const  SizedBox(
                                      width: 16,
                                    ),
                                    const  Text('Google',
                                        style: TextStyle(
                                            color: Color(0xff2E2C2C),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            )),
                            const  SizedBox(
                              width: 16,
                            ),
                            Expanded(
                                child: Container(
                              height: 46,
                                  width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color:const Color(0xFFFFFFFF),
                                  border: Border.all(
                                      width: 1, color: Color(0xFFE6E7F4)),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/logos/apple.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const  SizedBox(
                                      width: 16,
                                    ),
                                    const  Text('Apple',
                                        style: TextStyle(
                                            color: Color(0xff2E2C2C),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                        const SizedBox(height: 209,),

                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const  Text(
                            'Dont have an account?',
                            style:
                            TextStyle(color:Color(0xFF000B90), fontSize: 18),
                          ),
                          const SizedBox(width: 2,),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>FirstSignUpScreen()));
                              },
                              child:const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color:Color(0xFF000B90) , fontSize: 16,fontWeight: FontWeight.w500),
                              )),
                        ],
                      ),

                    )

                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
