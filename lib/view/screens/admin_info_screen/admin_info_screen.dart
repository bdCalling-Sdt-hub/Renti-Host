import 'package:flutter/material.dart';

class AdminInfoScreen extends StatefulWidget {
  const AdminInfoScreen({super.key});

  @override
  State<AdminInfoScreen> createState() => _AdminInfoScreenState();
}

class _AdminInfoScreenState extends State<AdminInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          appBar: AppBar(
            titleSpacing: -8,
            leading: IconButton(
              onPressed: () {

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
              'Admin Information',
              style: TextStyle(
                  color: Color(0xFF2E2C2C),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          body:  LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) =>
                 const SingleChildScrollView(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          left: 20, right: 20, bottom: 24,top: 24),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            'Hotline Number',
                            style: TextStyle(
                                color: Color(0xFF000B90),
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              Icon(Icons.call,color: Color(0xff2E2C2C),),
                              SizedBox(width: 8,),
                              Text(
                                '+52 123123123',
                                style: TextStyle(
                                    color: Color(0xFF000B90),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Icon(Icons.call,color: Color(0xff2E2C2C),),
                              SizedBox(width: 8,),
                              Text(
                                '+52 123123123',
                                style: TextStyle(
                                    color: Color(0xFF000B90),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Icon(Icons.call,color: Color(0xff2E2C2C),),
                              SizedBox(width: 8,),
                              Text(
                                '+52 123123123',
                                style: TextStyle(
                                    color: Color(0xFF000B90),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: 24,),
                          Text(
                            'Email',
                            style: TextStyle(
                                color: Color(0xFF000B90),
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              Icon(Icons.email,color: Color(0xff2E2C2C),),
                              SizedBox(width: 8,),
                              Text(
                                'admin1@gmail.com',
                                style: TextStyle(
                                    color: Color(0xFF000B90),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Icon(Icons.email,color: Color(0xff2E2C2C),),
                              SizedBox(width: 8,),
                              Text(
                                'admin1@gmail.com',
                                style: TextStyle(
                                    color: Color(0xFF000B90),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: 24,),
                          Text(
                            'Office Address',
                            style: TextStyle(
                                color: Color(0xFF000B90),
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              Icon(Icons.location_on,color: Color(0xff2E2C2C),),
                              SizedBox(width: 8,),
                              Text(
                                'Street no.14, Mexico City',
                                style: TextStyle(
                                    color: Color(0xFF000B90),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      )
                    ),
                  )),
        ));
  }
}
