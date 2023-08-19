import 'package:flutter/material.dart';

class RentListScreen extends StatefulWidget {
  const RentListScreen({super.key});

  @override
  State<RentListScreen> createState() => _RentListScreenState();
}

List<Map<String, String>> dataList = [
  {
    "image": "assets/images/Carphoto.png",
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Reserved",
  },
  {
    "image": "assets/images/Carphoto.png",
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Active",
  },
  {
    "image": "assets/images/Carphoto.png",
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Reserved",
  },
  {
    "image": "assets/images/Carphoto.png",
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Active",
  },
  {
    "image": "assets/images/Carphoto.png",
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Reserved",
  },
];

class _RentListScreenState extends State<RentListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          automaticallyImplyLeading: true,
          titleSpacing: -8,
          title: const Text(
            'Rent List',
            style: TextStyle(
              color: Color(0xFF2E2C2C),
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.40,
            ),
          ),
          backgroundColor: Color(0xffffffff),
          leading: IconButton(
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (_)=>IncomeScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              weight: 18,
              size: 18,
            ),
            color: const Color(0xff2E2C2C),
          )),
      body: LayoutBuilder(builder: (context, constraint) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                vertical: 24, horizontal: 20),
            child: Column(
              children: List.generate(
                  dataList.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: GestureDetector(
                          onTap: () => showDialog(
                              context: context,
                              builder: (BuildContext context) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: 350,
                                            height: 193,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
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
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 14,
                                                    right: 10),
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 70,
                                                            height: 70,
                                                            decoration:
                                                                ShapeDecoration(
                                                              image:
                                                                  const DecorationImage(
                                                                image: AssetImage(
                                                                    "assets/images/Carphoto.png"),
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            40),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          const Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Toyota Harrier',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF2E2C2C),
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  height: 1.40,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 8),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text.rich(
                                                                    TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              'Car license: ',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF999999),
                                                                            fontSize:
                                                                                10,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height:
                                                                                1.40,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              'NBG1234567',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF2E2C2C),
                                                                            fontSize:
                                                                                10,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height:
                                                                                1.40,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                  height: 8),
                                                              SizedBox(
                                                                width: 148,
                                                                height: 14,
                                                                child:
                                                                    Text.rich(
                                                                  TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            'Car year: ',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Color(0xFF999999),
                                                                          fontSize:
                                                                              10,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          height:
                                                                              1.40,
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            '2020',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Color(0xFF2E2C2C),
                                                                          fontSize:
                                                                              10,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          height:
                                                                              1.40,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          dataList[index][
                                                                      "status"] ==
                                                                  "Reserved"
                                                              ? Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      top: 24),
                                                                  child:
                                                                      Container(
                                                                    height: 22,
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            18,
                                                                        vertical:
                                                                            4),
                                                                    decoration:
                                                                        ShapeDecoration(
                                                                      color: const Color(
                                                                          0xFFE6F6F4),
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(4)),
                                                                    ),
                                                                    child:
                                                                        const Text(
                                                                      'Active',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF00A991),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        height:
                                                                            1.40,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                )
                                                              : Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      top: 24),
                                                                  child:
                                                                      Container(
                                                                    height: 22,
                                                                    padding: const EdgeInsets
                                                                            .symmetric(
                                                                        horizontal:
                                                                            12,
                                                                        vertical:
                                                                            4),
                                                                    decoration:
                                                                        ShapeDecoration(
                                                                      color: const Color(
                                                                          0xFFE6F6F4),
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(4)),
                                                                    ),
                                                                    child:
                                                                        const Text(
                                                                      'Reserved',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFFD7263D),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                        height:
                                                                            1.40,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 16,
                                                      ),
                                                      const Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Trip no:',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF999999),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.40,
                                                            ),
                                                          ),
                                                          Text('01',
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF2E2C2C),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.40,
                                                              ))
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      const Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Start Date:',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF999999),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.40,
                                                            ),
                                                          ),
                                                          Text(
                                                            '9 aug 2023',
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF2E2C2C),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.40,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      const Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'End Date:',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF999999),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.40,
                                                              ),
                                                            ),
                                                            Text(
                                                              '10 aug 2023',
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF2E2C2C),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.40,
                                                              ),
                                                            ),
                                                          ]),
                                                      const SizedBox(
                                                        height: 24,
                                                      ),
                                                      const Text(
                                                        'User Information',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF2E2C2C),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.40,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 16,
                                                      ),
                                                      const Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Name:',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF999999),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.40,
                                                            ),
                                                          ),
                                                          Text('Mr. John Doe',
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF2E2C2C),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.40,
                                                              ))
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      const Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Contact:',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF999999),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.40,
                                                            ),
                                                          ),
                                                          Text(
                                                            '+52 1526363840',
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF2E2C2C),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.40,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      const Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Email:',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF999999),
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.40,
                                                              ),
                                                            ),
                                                            Text(
                                                              'johndoe@gmail.com',
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF2E2C2C),
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.40,
                                                              ),
                                                            ),
                                                          ]),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      const Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'INE:',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF999999),
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.40,
                                                              ),
                                                            ),
                                                            Text(
                                                              '1231 1231 1231 1231',
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF2E2C2C),
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.40,
                                                              ),
                                                            ),
                                                          ]),
                                                      const SizedBox(
                                                        height: 8,
                                                      ),
                                                      const Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Driving license:',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF999999),
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.40,
                                                              ),
                                                            ),
                                                            Text(
                                                              'ACD1234566',
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF2E2C2C),
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.40,
                                                              ),
                                                            ),
                                                          ]),
                                                    ]))),
                                      ],
                                    ),
                                  )),
                          child: Container(
                            width: 350,
                            height: 86,
                            padding: const EdgeInsets.all(8),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 10,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/Carphoto.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Toyota Harrier',
                                      style: TextStyle(
                                        color: Color(0xFF2E2C2C),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        height: 1.40,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Car license: ',
                                            style: TextStyle(
                                              color: Color(0xFF999999),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              height: 1.40,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'NBG1234567',
                                            style: TextStyle(
                                              color: Color(0xFF2E2C2C),
                                              fontSize: 10,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              height: 1.40,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    SizedBox(
                                      width: 148,
                                      height: 14,
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Car year: ',
                                              style: TextStyle(
                                                color: Color(0xFF999999),
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: 1.40,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '2020',
                                              style: TextStyle(
                                                color: Color(0xFF2E2C2C),
                                                fontSize: 10,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: 1.40,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                dataList[index]["status"] == "Reserved"
                                    ? Container(
                                        height: 22,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18, vertical: 4),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFE6F6F4),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                        child: const Text(
                                          'Active',
                                          style: TextStyle(
                                            color: Color(0xFF00A991),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            height: 1.40,
                                          ),
                                        ),
                                      )
                                    : Container(
                                        height: 22,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 4),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFE6F6F4),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                        child: const Text(
                                          'Reserved',
                                          style: TextStyle(
                                            color: Color(0xFFD7263D),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            height: 1.40,
                                          ),
                                        ),
                                      )
                              ],
                            ),
                          ),
                        ),
                      )),
            ),
          ),
        );
      }),
    );
  }
}
