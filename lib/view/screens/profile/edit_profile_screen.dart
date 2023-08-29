import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/profile/profile_screen.dart';

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
        extendBody: true,
        backgroundColor: const Color(0xFFFBFBFB),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFBFBFB),
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>ProfileScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 14,
              color:  Color(0xff2E2C2C),
            ),
          ),
          automaticallyImplyLeading: false,

          title: const Text(
            'Profile Edit',
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
                            child: Stack(
                              children: [
                                Image.asset("assets/images/profile_picture.png",height: 100,width: 100,),
                                Positioned(
                                    bottom: 4,
                                    right: 4,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff000b90)
                                      ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Image.asset("assets/icons/camera_icons.png",height: 20,width: 20,),
                                        ))),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16,),
                          const Text(
                            'Name',
                            style: TextStyle(

                              color: Color(0xFF2E2C2C),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,


                            )
                          ),
                          const SizedBox(height: 12,),
                          TextFormField(
                            style:const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF2E2C2C)

                            ),
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
                                fontWeight: FontWeight.w400
                            ),
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
                            'Phone Number',
                            style: TextStyle(
                                color: Color(0xFF2E2C2C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 12,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 60,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6, horizontal: 14),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border:
                                        Border.all(color: const Color(0xFFCCCCCC))),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 40,
                                          width: 40,
                                          child:
                                          Image.asset('assets/logos/flag.png'),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        const Text(
                                          '+52',
                                          style: TextStyle(
                                              color: Color(0xFFCCCCCC),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  style: const TextStyle(

                                    color: Color(0xFF2E2C2C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,),

                                  maxLines: 1,
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
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
                                        borderSide: BorderSide(
                                            color: Color(0xFFCCCCCC))),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
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
                          SizedBox(
                            height: 100,
                            child: TextFormField(
                              style:const TextStyle(color: Color(0xFF2E2C2C)),
                              maxLines: 4,
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
                          ),
                        
                        ],
                      ),
                    ),
                  ),
                )),
        
        // bottomNavigationBar: CustomButton(onTap: (){}, buttonName: "Save", buttonColor: const Color(0xff000b90)),
      ),
    );
  }
}
