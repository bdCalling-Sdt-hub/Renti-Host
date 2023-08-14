import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCarList extends StatelessWidget {

  CustomCarList({super.key});

  List<Map<String , String>> dataList = [

    {

      "image": "assets/images/black_car.png",
      "carModel" : "Toyota Harrier",
      "price": "\$100/day",
      "status" : "Reserved",

    },

    {
      "image": "assets/images/black_car.png",
      "carModel" : "Toyota Harrier",
      "price": "\$100/day",
      "status" : "Active",

    },
    {

      "image": "assets/images/black_car.png",
      "carModel" : "Toyota Harrier",
      "price": "\$100/day",
      "status" : "Reserved",

    },

    {
      "image": "assets/images/black_car.png",
      "carModel" : "Toyota Harrier",
      "price": "\$100/day",
      "status" : "Active",

    },
    {

      "image": "assets/images/black_car.png",
      "carModel" : "Toyota Harrier",
      "price": "\$100/day",
      "status" : "Reserved",

    },
  ];

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cars List",style: TextStyle(color: Color(0xff2E2C2C),fontSize:14 ,fontWeight:FontWeight.w600 ),),
              Text("See All",style: TextStyle(color: Color(0xff000B90),fontSize:14 ,fontWeight:FontWeight.w400 ),),

            ],
          ),
        ),
        Column(
          children: List.generate(dataList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xffE6E7F4),width: 1)
                ),
                child: Row(
                  children: [
                    Image.asset(
                        dataList[index]["image"] ?? "",
                        height: 69,
                        width: 139
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0,left: 8,bottom: 8),
                          child: Text(
                              "Toyota Harrier",
                              style: TextStyle(color: Color(0xff000B90),fontSize: 14,fontWeight: FontWeight.w700)
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 8.0,left: 8,bottom: 8),
                          child: Text("\$100/day",style: TextStyle(color: Color(0xff595959),fontSize: 12,fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                    const SizedBox(width: 21,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0,top: 10),
                          child: dataList[index]["status"] == "Reserved" ? Container(
                            width: 71,
                            decoration: BoxDecoration(
                              color: const Color(0xffFBE9EC),
                              borderRadius: BorderRadius.circular(4),

                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.0),
                              child: Center(child: Text("Reserved",style: TextStyle(color: Color(0xffD7263D),fontSize: 10 ,fontWeight:FontWeight.w400 ),)),
                            ),
                          ) : Container(
                            width: 71,
                            decoration: BoxDecoration(
                              color: const Color(0xffE6F6F4),
                              borderRadius: BorderRadius.circular(4),

                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.0),
                              child: Center(child: Text("Active",style: TextStyle(color: Color(0xff00A991),fontSize: 10 ,fontWeight:FontWeight.w400 ),)),
                            ),
                          ),
                        ),
                        dataList[index]["status"] == "Reserved" ? const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color:  Color(0xff2E2C2C),
                            size: 18,
                            weight: 10
                        ) : const SizedBox()
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
        )
      ],

    );
  }
}
