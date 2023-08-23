import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  List<Map<String, String>> dataList = [
    {
      "userName" : "Humayun",
      "userPic" : "assets/images/avater1.png",
      "ratingImage" : "assets/images/Vector.png",
      "rating" : "2.5",
      "status": "Complete",
      "Contact:":"+52 3645646464",
      "Email:": "kabir@gmail.com",
      "tripNo" : "01"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(dataList.length, (index){
        return Container(
          width: MediaQuery.of(context).size.width,
          padding:
          const EdgeInsetsDirectional.symmetric(
              vertical: 16, horizontal: 16),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(8)),
            shadows:  [
              BoxShadow(
                color: const Color(0xff000000).withOpacity(0.001),
                blurRadius: 10,
                offset: const Offset(0, 1),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 6,
                    child: Row(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Humayun',
                              style: TextStyle(
                                color: Color(0xFF2E2C2C),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(children: [
                              Image(
                                  image: AssetImage(
                                      "assets/images/Vector.png"
                                  ),
                                  width: 12,
                                  height: 12),
                              SizedBox(width: 8,),
                              Text("(2.5)")
                            ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        dataList[index]["status"]=="Complete"?Container(
                          width: 71,
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration:
                          ShapeDecoration(
                            color: const Color(0xFFE6F6F4),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          ),
                          child: const Center(
                            child: Text(
                              'Complete',
                              style: TextStyle(
                                color: Color(0xFF00A991),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        )
                            : Container(width: 71,
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFBE9EC),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                          child: const Center(
                            child: Text(
                              'Reserved',
                              style: TextStyle(
                                color: Color(0xFFD7263D),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,

                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: ShapeDecoration(
                                color: const Color(0xffE6E7F4),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
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
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              child: const Icon(
                                  Icons.message,
                                  size: 18,
                                  color: Color(0xff000b90)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Contact:',
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text('+52 3645646464',
                      style: TextStyle(
                        color: Color(0xFF2E2C2C),
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
                ],
              ),
              const SizedBox(height: 8),
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
                    Text(
                      '01',
                      style: TextStyle(
                        color: Color(0xFF2E2C2C),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ]),
            ],
          ),
        );
      }),
    );;
  }
}
