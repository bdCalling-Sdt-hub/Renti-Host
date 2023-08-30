import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        titleSpacing: 20,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text(
          'Profile',
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
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff000B90),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/profile_photo.png',
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  const Text(
                                    'John Doe',
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                EditProfileScreen()));
                                  },
                                  child: SvgPicture.asset(
                                    "assets/icons/edit_icon.svg",
                                    color: Colors.white,
                                  ))

                              /*IconButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const EditProfileScreen()));
                                  }, icon:const Icon(Icons.edit_square,size: 20,color: Color(0xffFFFFFF),)
                                  )*/
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFFE6E7F4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding:
                                EdgeInsets.only(left: 8, top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.credit_card_outlined,
                                  color: Color(0xff999999),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'INE',
                                      style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '1231 1231 1231 1231',
                                      style: TextStyle(
                                          color: Color(0xFF2E2C2C),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFFE6E7F4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: Color(0xff999999),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Email',
                                      style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'johndoe@gmail.com',
                                      style: TextStyle(
                                          color: Color(0xFF2E2C2C),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFFE6E7F4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.call_rounded,
                                  color: Color(0xff999999),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Phone',
                                      style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '+52 2343545666',
                                      style: TextStyle(
                                          color: Color(0xFF2E2C2C),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFFE6E7F4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.date_range_outlined,
                                  color: Color(0xff999999),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Date of Birth',
                                      style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '12-08-1998',
                                      style: TextStyle(
                                          color: Color(0xFF2E2C2C),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFFE6E7F4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/icons/gender.svg"),
                                const SizedBox(
                                  width: 18,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Gender',
                                      style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Female',
                                      style: TextStyle(
                                          color: Color(0xFF2E2C2C),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFFE6E7F4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding:
                                EdgeInsets.only(top: 8.0, left: 8, bottom: 8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xff999999),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Address',
                                      style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Privada Calle 109 - Piso 4',
                                      style: TextStyle(
                                          color: Color(0xFF2E2C2C),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              )),
    ));
  }
}
