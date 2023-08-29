import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({super.key});

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}


class _PaymentCardState extends State<PaymentCard> {

  List<Map<String,String>> dataList = [

    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "car license no:" : "61-10-TMD",
      "Transition ID:": "1223435566",
      "Trip no" : "1",
      "amount" : " \$100"

    },

    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "car license no:" : "61-10-TMD",
      "Transition ID:": "1223435566",
      "Trip no" : "2",
      "amount" : " \$200"

    },
    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "car license no:" : "61-10-TMD",
      "Transition ID:": "1223435566",
      "Trip no" : "3",
      "amount" : " \$60"

    },

    {
      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "car license no:" : "61-10-TMD",
      "Transition ID:": "1223435566",
      "Trip no" : "9",
      "amount" : " \$160"

    },
    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "car license no:" : "61-10-TMD",
      "Transition ID:": "12234387655566",
      "Trip no" : "5",
      "amount" : " \$222"

    },
    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "car license no:" : "61-10-TMD",
      "Transition ID:": "1223345435566",
      "Trip no" : "8",
      "amount" : " \$232"

    },
    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "car license no:" : "61-10-TMD",
      "Transition ID:": "12234563435566",
      "Trip no" : "10",
      "amount" : " \$100"

    },
    {

      "image":"assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "car license no:" : "61-10-TMD",
      "Transition ID:": "124563435566",
      "Trip no" : "4",
      "amount" : "\$85"

    },
    {

      "image": "assets/images/Carphoto.png",
      "carModel" : "Toyota Harrier",
      "car license no:" : "61-10-TMD",
      "Transition ID:": "122456435566",
      "Trip no" : "7",
      "amount" : " \$70"

    },
  ];
  Map<int, bool> expandedMap = {};

  void onChanged(int index){
    setState(() {
      if (expandedMap.containsKey(index)) {
        expandedMap[index] = !expandedMap[index]!;
      } else {
        expandedMap[index] = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal:20 ),
      child: Column(
          children: List.generate(dataList.length,(index){

            final isExpanded = expandedMap[index] ?? false;

            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.only(left: 8,right:16,top: 8,bottom: 8),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      shadows:  const [
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
                          width: 100,
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
                                  const Text(
                                    'Toyota Harrier',
                                    style: TextStyle(
                                      color: Color(0xFF000B90),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      height: 1.40,
                                    ),
                                  ),
                                  Text(
                                    dataList[index]["amount"]!,
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Color(0xFF000B90),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      height: 1.40,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(
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
                                      style: const TextStyle(
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
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'Car License No:',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 1.40,
                                      ),
                                    ),
                                    TextSpan(
                                      text: dataList[index]["car license no:"],
                                      style: const TextStyle(
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
                                        const TextSpan(
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
                                          style: const TextStyle(
                                            color: Color(0xFF2E2C2C),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            height: 1.40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: (){
                                        onChanged(index);
                                      },
                                      child: isExpanded ? Icon(Icons.keyboard_arrow_up_sharp) : Icon(Icons.keyboard_arrow_down_sharp)
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
                isExpanded ? Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsetsDirectional.symmetric(horizontal: 4),
                    padding: const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 12),
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
                    child: const Row(
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
                    )
                ) : const SizedBox()
              ],
            );
          }
          )
      ),
    );
  }
}
