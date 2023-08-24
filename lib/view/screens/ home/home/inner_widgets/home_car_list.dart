import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/start_end_date.dart';
class HomeCarList extends StatefulWidget {

  const HomeCarList({super.key});

  @override
  State<HomeCarList> createState() => _HomeCarListState();
}

class _HomeCarListState extends State<HomeCarList> {

  bool isClicked = false;
  int selectedIndex = -1;

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
        const SizedBox(height: 0,),
        Column(
          children: List.generate(dataList.length, (index) {
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
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
                                  dataList[index]["status"]=="Reserved"?
                                  Container(
                                    width: 71,
                                    alignment: Alignment.center,
                                    padding: const EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 12),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFBE9EC),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Text("Reserved", textAlign: TextAlign.center, style: TextStyle(color: Color(0xffD7263D),fontSize: 10 ,fontWeight:FontWeight.w400 ),),
                                  ):
                                  Container(
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

                                      dataList[index]["status"] == "Reserved"? GestureDetector(
                                        onTap: () {
                                          changeIndex(index);
                                        },
                                        child: Icon(
                                         isClicked ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                                         color:  const Color(0xff2E2C2C),
                                         size: 18,
                                         weight: 10
                                        )
                                      ) : const SizedBox()
                                 ],
                               )
                             ],
                           ),
                        ),
                      ),
                    ],
                  ),
                ),
                dataList[index]["status"] == "Reserved" && index == selectedIndex ? const StartEndDate() : const SizedBox()
              ],
            );
          }
          ),
        ),

      ],

    );
  }

  changeIndex(int index) {
    setState(() {
      selectedIndex = index;
      isClicked = !isClicked;

    });
  }

}
