import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/profile_screen/profile_screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
              Navigator.push(context, MaterialPageRoute(builder: (_)=>ProfileScreen()));
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
            'Edit Profile Screen',
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
                        left: 20, right: 20, bottom: 24,top: 24),
                    child:Form(
                      key: _formKey,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image.asset('assets/images/profile_edit.png'),
                            ),
                          ),
                          const SizedBox(height: 16,),
                          const Text(
                            'Name',
                            style: TextStyle(
                                color: Color(0xFF2E2C2C),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 12,),
                          TextFormField(
                            style:const TextStyle(color: Color(0xFF2E2C2C)),
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            decoration:const InputDecoration(
                              fillColor: Color(0xFFFFFFFF),
                              hintText: 'Enter your name...',
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
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(height: 16,),
                          const Text(
                            'Email',
                            style: TextStyle(
                                color: Color(0xFF2E2C2C),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 12,),
                          TextFormField(
                            style:const TextStyle(color: Color(0xFF2E2C2C)),
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
                          const SizedBox(height: 16,),
                         const Text(
                            'Mobile',
                            style: TextStyle(
                                color: Color(0xFF2E2C2C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 12,),
                          TextFormField(
                            style:const TextStyle(color: Color(0xFF2E2C2C)),
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            decoration:const InputDecoration(
                              fillColor: Color(0xFFFFFFFF),
                              hintText: 'Enter your mobile number...',
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
                              } else if (value.length<11) {
                                return 'Please enter a valid email';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const  SizedBox(height: 16,),
                          const Text(
                            'Address',
                            style: TextStyle(
                                color: Color(0xFF2E2C2C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 12,),
                          TextFormField(
                            style:const TextStyle(color: Color(0xFF2E2C2C)),
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            decoration:const InputDecoration(
                              fillColor: Color(0xFFFFFFFF),
                              hintText: 'Enter your Address...',
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
                              }  else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(height: 150,),
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
                                  'Save',
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
                  ),
                )),
      ),
    );
  }
}
