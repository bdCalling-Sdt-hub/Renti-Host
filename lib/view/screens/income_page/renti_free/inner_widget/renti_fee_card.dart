import 'package:flutter/material.dart';
class RentiFeeCard extends StatefulWidget {
  const RentiFeeCard({super.key});
  @override
  State<RentiFeeCard> createState() => _RentiFeeCardState();
}
class _RentiFeeCardState extends State<RentiFeeCard> {
  List<Map<String,String>> dataList = [

    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "Transition": "1223435566",
      "Trip no" : "1",

    },

    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "Transition": "1223435566",
      "Trip no" : "2",

    },
    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "Transition": "1223435566",
      "Trip no" : "3",

    },

    {
      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "Transition ID:": "1223435566",
      "Trip no" : "9",

    },
    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "Transition ID:": "12234387655566",
      "Trip no" : "5",

    },
    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "Transition ID:": "1223345435566",
      "Trip no" : "8",

    },
    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "Transition ID:": "12234563435566",
      "Trip no" : "10",

    },
    {

      "image":"assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "Transition ID:": "124563435566",
      "Trip no" : "4",

    },
    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "Transition ID:": "122456435566",
      "Trip no" : "7",

    },
  ];
  bool inClicked = false;
  int selectedIndex = -1;
  onChanged(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(dataList.length, (index){
          return Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 8,right:16,top: 8,bottom: 8),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      shadows:  [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 10,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 86,
                          height: 88,
                          decoration: ShapeDecoration(
                            image:  DecorationImage(
                              image: AssetImage(
                                  dataList[index]["image"]!),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                        const SizedBox(width: 8,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Toyota Harrier',
                                    style: TextStyle(
                                      color: Color(0xFF000B90),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      height: 1.40,
                                    ),
                                  ),
                                  Text(
                                    dataList[index]["carModel"]! ,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF000B90),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      height: 1.40,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                               Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Transition ID:',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 1.40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: dataList[index]["Transition ID:"],
                                      style: TextStyle(
                                        color: Color(0xFF2E2C2C),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        height: 1.40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Trip no: ',
                                          style: TextStyle(
                                            color: Color(0xFF999999),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            height: 1.40,
                                          ),
                                        ),
                                        TextSpan(
                                          text: dataList[index]["Trip no"],
                                          style: TextStyle(
                                            color: Color(0xFF2E2C2C),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            height: 1.40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                      onTap: (){
                                        onChanged(selectedIndex);
                                        inClicked =!inClicked;
                                      },
                                      child:  Icon(Icons.keyboard_arrow_down_sharp))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 4),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.25, color: Color(0xFFE6E7F4)),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsetsDirectional.symmetric(vertical: 16,horizontal: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Start: ',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.40,
                                  ),
                                ),
                                TextSpan(
                                  text: '05 aug, 2023',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    height: 1.40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'End: ',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.40,
                                  ),
                                ),
                                TextSpan(
                                  text: '06 aug, 2023',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    height: 1.40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        })
    );
  }
}
