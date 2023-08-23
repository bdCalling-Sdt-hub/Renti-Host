import 'package:flutter/material.dart';

class RentiDetailsAlert extends StatelessWidget {
  const RentiDetailsAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 350,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow:  [
                      BoxShadow(
                          color: const Color(0xff000000).withOpacity(0.1),
                          blurRadius: 10,
                          offset: Offset(0, 1)
                      )
                    ]
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 14, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                        width: 70,
                                        height: 70,
                                        decoration: const BoxDecoration(
                                        image:
                                        DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Carphoto.png"),
                                          fit: BoxFit.cover,
                                        ),
                                        shape: BoxShape.circle
                                      ),
                                    ),
                                    const SizedBox(
                                        width: 16),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Toyota Harrier',
                                          style:
                                          TextStyle(
                                            color: Color(0xFF2E2C2C),
                                            fontSize: 18,
                                            fontWeight:
                                            FontWeight.w500,
                                            height: 1.40,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Car license: ',
                                                style: TextStyle(color:
                                                  Color(0xFF999999),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                'NBG1234567',
                                                style: TextStyle(color:
                                                  Color(0xFF2E2C2C),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                'Car year: ',
                                                style: TextStyle(
                                                  color: Color(0xFF999999),
                                                  fontSize: 10, fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                '2020',
                                                style:
                                                TextStyle(
                                                  color:
                                                  Color(0xFF2E2C2C),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                width: 71,
                                padding: const EdgeInsets.symmetric(vertical: 4),
                                decoration:
                                ShapeDecoration(
                                  color: const Color(0xFFE6F6F4),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                ),
                                child:
                                const Text(
                                  textAlign: TextAlign.center,
                                  'Active',
                                  style: TextStyle(
                                    color: Color(0xFF00A991),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Trip no:',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                              Text('01',

                                  style: TextStyle(color: Color(0xFF2E2C2C),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Start Date:',
                                style: TextStyle(
                                  color: Color(
                                      0xFF999999),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '9 aug 2023',
                                style: TextStyle(
                                  color: Color(0xFF2E2C2C),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height:8),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'End Date:',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '10 aug 2023',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,

                                  ),
                                ),
                              ]),
                          const SizedBox(height: 24,),
                          const Text('User Information',
                            style: TextStyle(
                              color:
                              Color(0xFF2E2C2C), fontSize: 12,
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                          const SizedBox(height: 16,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Name:',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text('Mr. John Doe',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ))
                            ],
                          ),
                          const SizedBox(height:8),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Contact:',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '+52 1526363840',
                                style: TextStyle(
                                  color: Color(0xFF2E2C2C),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height:8),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Email:',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,

                                  ),
                                ),
                                Text(
                                  'johndoe@gmail.com',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,

                                  ),
                                ),
                              ]),
                          const SizedBox(height: 8),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'INE:',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '1231 1231 1231 1231',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]),
                          const SizedBox(height:8),
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Driving license:',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,

                                  ),
                                ),
                                Text(
                                  'ACD1234566',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]),
                        ]))),
          ],
        ),
      ),
    );
  }
}
