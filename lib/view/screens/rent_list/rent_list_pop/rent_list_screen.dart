import 'package:flutter/material.dart';

class RentListScreen extends StatefulWidget {
  const RentListScreen({super.key});

  @override
  State<RentListScreen> createState() => _RentListScreenState();
}
List<Map<String , String>> dataList = [

  {
    "image": "assets/images/Carphoto.png",
    "car license" : "NBG1234567",
    "car year": "2020",
    "status" : "Reserved",

  },

  {
    "image": "assets/images/Carphoto.png",
    "car license" : "NBG1234567",
    "car year": "2020",
    "status" : "Active",

  },
  {

    "image": "assets/images/Carphoto.png",
    "car license" : "NBG1234567",
    "car year": "2020",
    "status" : "Reserved",

  },

  {
    "image": "assets/images/Carphoto.png",
    "car license" : "NBG1234567",
    "car year": "2020",
    "status" : "Active",

  },
  {

    "image": "assets/images/Carphoto.png",
    "car license" : "NBG1234567",
    "car year": "2020",
    "status" : "Reserved",

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
              fontFamily: 'Poppins',
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
      body: LayoutBuilder(builder: (context,constraint){
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
            child: Column(
              children: List.generate(dataList.length, (index) =>
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                width: 350,
                height: 86,
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
                            image: AssetImage("assets/images/Carphoto.png"),
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
                      dataList[index]["status"]=="Reserved" ? Container(
                        height: 22,
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE6F6F4),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
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
                      ): Container(
                     height: 22,
                     padding:const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                     clipBehavior: Clip.antiAlias,
                     decoration: ShapeDecoration(
                       color: const Color(0xFFE6F6F4),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
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
                  ) ),
            ),
          ),
        );
      }),
    );
  }
}
