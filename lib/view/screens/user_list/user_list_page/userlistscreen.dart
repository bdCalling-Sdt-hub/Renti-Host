import 'package:flutter/material.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

List<Map<String, String>> dataList = [
  {
    "status": "Reserved",
  },
  {
    "status": "Complete",
  },
  {
    "status": "Reserved",
  },
  {
    "status": "Complete",
  },
  {
    "status": "Reserved",
  },
  {
    "status": "Complete",
  },
  {
    "status": "Complete",
  },
  {
    "status": "Reserved",
  },
  {
    "status": "Complete",
  },
  {
    "status": "Reserved",
  },
];

class _UserListScreenState extends State<UserListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            automaticallyImplyLeading: true,
            titleSpacing: -8,
            title: const Text('User List',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            backgroundColor: const Color(0xffffffff),
            leading: IconButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (_)=>UserRequestScreen()));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                weight: 18,
                size: 18,
              ),
              color: Colors.black,
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
                                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                            width: MediaQuery.of(context).size.width,
                                             height: 193,
                                            padding:
                                                const EdgeInsetsDirectional.symmetric(
                                                    vertical: 16, horizontal: 16),
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
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 70,
                                                      height: 70,
                                                      decoration: const ShapeDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              "assets/images/Avater.png"),
                                                          fit: BoxFit.fill,
                                                        ),
                                                        shape: OvalBorder(),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 16),
                                                    const Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'John Doe',
                                                          style: TextStyle(
                                                            color: Color(0xFF2E2C2C),
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.40,
                                                          ),
                                                        ),
                                                        SizedBox(height: 8),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment.center,
                                                          children: [
                                                            Image(
                                                                image: AssetImage(
                                                                    "assets/images/Vector.png"),
                                                                width: 12,
                                                                height: 12),
                                                            SizedBox(
                                                              width: 8,
                                                            ),
                                                            Image(
                                                                image: AssetImage(
                                                                    "assets/images/Vector.png"),
                                                                width: 12,
                                                                height: 12),
                                                            SizedBox(
                                                              width: 8,
                                                            ),
                                                            Image(
                                                                image: AssetImage(
                                                                    "assets/images/Vector.png"),
                                                                width: 12,
                                                                height: 12),
                                                            SizedBox(
                                                              width: 8,
                                                            ),
                                                            Text("(3.5)"),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      width: 41,
                                                    ),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.center,
                                                      children: [
                                                        dataList[index]["status"] ==
                                                                "Reserved"
                                                            ? Container(
                                                                width: 71,
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal: 12,
                                                                    vertical: 4),
                                                                clipBehavior:
                                                                    Clip.antiAlias,
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color: const Color(
                                                                      0xFFE6F6F4),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius
                                                                                  .circular(
                                                                                      4)),
                                                                ),
                                                                child: const Center(
                                                                  child: Text(
                                                                    'Complete',
                                                                    style: TextStyle(
                                                                      color: Color(
                                                                          0xFF00A991),
                                                                      fontSize: 10,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                      height: 1.40,
                                                                    ),
                                                                  ),
                                                                ),
                                                              )
                                                            : Container(
                                                                width: 71,
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal: 12,
                                                                    vertical: 4),
                                                                clipBehavior:
                                                                    Clip.antiAlias,
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color: const Color(
                                                                      0xFFFBE9EC),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius
                                                                                  .circular(
                                                                                      4)),
                                                                ),
                                                                child: const Center(
                                                                  child: Text(
                                                                    'Reserved',
                                                                    style: TextStyle(
                                                                      color: Color(
                                                                          0xFFD7263D),
                                                                      fontSize: 10,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                      height: 1.40,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                        const SizedBox(height: 8),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment.center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 24,
                                                              height: 24,
                                                              decoration: ShapeDecoration(
                                                                color: const Color(
                                                                    0xffE6E7F4),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                    4)),
                                                              ),
                                                              child: const Icon(
                                                                Icons.call,
                                                                size: 18,
                                                                color: Color(0xff000b90),
                                                              ),
                                                            ),
                                                            const SizedBox(width: 16),
                                                            Container(
                                                              width: 24,
                                                              height: 24,
                                                              decoration: ShapeDecoration(
                                                                color: const Color(
                                                                    0xFFE6E7F4),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius
                                                                                .circular(
                                                                                    4)),
                                                              ),
                                                              child: const Icon(
                                                                  Icons.message,
                                                                  size: 18,
                                                                  color:
                                                                      Color(0xff000b90)),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),

                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 24,
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
                                                    Text('+52 3645646464',
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
                                                      'Email:',
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
                                                      'johndoe@gmail.com',
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
                                                      Text(
                                                        '01',
                                                        textAlign:
                                                        TextAlign
                                                            .right,
                                                        style: TextStyle(
                                                          color: Color(0xFF2E2C2C),
                                                          fontSize: 12,
                                                          fontWeight:                    
                                                          FontWeight
                                                              .w400,
                                                          height: 1.40,
                                                        ),
                                                      ),
                                                    ]),
                                              ],
                                            ),
                                          ),


                                    ],
                                  ),
                                )),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 86,
                              padding: const EdgeInsetsDirectional.symmetric(
                                  vertical: 8, horizontal: 16),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: const ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/Avater.png"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'John Doe',
                                        style: TextStyle(
                                          color: Color(0xFF2E2C2C),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          height: 1.40,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  "assets/images/Vector.png"),
                                              width: 12,
                                              height: 12),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Image(
                                              image: AssetImage(
                                                  "assets/images/Vector.png"),
                                              width: 12,
                                              height: 12),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Image(
                                              image: AssetImage(
                                                  "assets/images/Vector.png"),
                                              width: 12,
                                              height: 12),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text("(3.5)"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 41,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      dataList[index]["status"] == "Reserved"
                                          ? Container(
                                              width: 71,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 4),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFE6F6F4),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Complete',
                                                  style: TextStyle(
                                                    color: Color(0xFF00A991),
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.40,
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Container(
                                              width: 71,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 4),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFFFBE9EC),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Reserved',
                                                  style: TextStyle(
                                                    color: Color(0xFFD7263D),
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.40,
                                                  ),
                                                ),
                                              ),
                                            ),
                                      const SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 24,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xffE6E7F4),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                            ),
                                            child: const Icon(
                                              Icons.call,
                                              size: 18,
                                              color: Color(0xff000b90),
                                            ),
                                          ),
                                          const SizedBox(width: 16),
                                          Container(
                                            width: 24,
                                            height: 24,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFFE6E7F4),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                            ),
                                            child: const Icon(Icons.message,
                                                size: 18,
                                                color: Color(0xff000b90)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
              ),
            ),
          );
        }));
  }
}
