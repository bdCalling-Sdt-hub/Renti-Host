import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/settings/settings/settings_screen.dart';


class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        titleSpacing: -8,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const SettingsScreen()));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 14,
          ),
          color: const Color(0xff2E2C2C),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text(
          'Change Password',
          style: TextStyle(
              color: Color(0xFF2E2C2C),
              fontSize: 18,
              fontWeight: FontWeight.w600),
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
                              'Current Password',
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
                                hintText: 'Type current password here...',
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
                            const Text(
                              'New Password',
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
                                hintText: 'Type new password here...',
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
                            const Text(
                              'Confirm New Password',
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
                                hintText: 'Confirm New Password',
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
                              height: 24,
                            ),
                            GestureDetector(
                              onTap: () {

                              },
                              child:const Text('Forgot Password?',
                                  style: TextStyle(
                                      color: Color(0xFF000B90),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                            ),


                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              )
      ),
      extendBody: true,
      //bottomNavigationBar: CustomButton(onTap: (){}, buttonName: "Save", buttonColor: const Color(0xff000b90)),
    );
  }
}
