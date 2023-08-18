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
            return Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xffE6E7F4),width: 1)
              ),
              child: Row(
                children: [
                  Image.asset(
                      dataList[index]["image"] ?? "",
                      height: 69,
                      width: 139
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 8),
                      child: Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                              const Text(
                                  "Toyota Harrier",
                                  style: TextStyle(color: Color(0xff000B90),fontSize: 14,fontWeight: FontWeight.w700)
                              ),
                              dataList[index]["status"]=="Reserved"?Container(
                                width: 71,
                                alignment: Alignment.center,
                                padding: const EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 12),
                                decoration: BoxDecoration(
                                  color: const Color(0xffFBE9EC),
                                  borderRadius: BorderRadius.circular(4),

                                ),
                                child: const Text("Reserved", textAlign: TextAlign.center, style: TextStyle(color: Color(0xffD7263D),fontSize: 10 ,fontWeight:FontWeight.w400 ),),
                              ):Container(
                                width: 71,
                                alignment: Alignment.center,
                                padding: const EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 12),
                                decoration: BoxDecoration(
                                  color: const Color(0xffE6F6F4),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text("Active", textAlign: TextAlign.center,style: TextStyle(color: Color(0xff00A991),fontSize: 10 ,fontWeight:FontWeight.w400 ),),
                              ),
                            ],
                            ),
                           const SizedBox(height: 16),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               const Text("\$ 100/day",style: TextStyle(color: Color(0xff595959),fontSize: 12,fontWeight: FontWeight.w500),),
                               const Padding(
                                 padding: EdgeInsets.only(bottom: 16.0,top: 10),
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
                  ),
                ],
              ),
            );
          }),
        )
      ],

    );
  }
}
