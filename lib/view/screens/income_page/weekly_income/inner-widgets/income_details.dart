import 'package:flutter/material.dart';

class WeeklyIncomeDetails extends StatefulWidget {
  const WeeklyIncomeDetails({super.key});

  @override
  State<WeeklyIncomeDetails> createState() => _IncomeDetailsState();
}

class _IncomeDetailsState extends State<WeeklyIncomeDetails> {
  List <Map<String , dynamic>> tripNo = [
    {
      "carImage" : "assets/images/Carphoto.png",
      "carModel" : "Toyota harrier",
      "transitionId" : 02847845758574,
      "tripNo" : 02,
      "amount" : "\$ 50",
    },
    {
      "carImage" : "assets/images/Carphoto.png",
      "carModel" : "Toyota harrier",
      "transitionId" : 02847845758574,
      "tripNo" : 03,
      "amount" : "\$ 50",
    },
    {
      "carImage" : "assets/images/Carphoto.png",
      "carModel" : "Toyota harrier",
      "transitionId" : 02847845758574,
      "tripNo" : 04,
      "amount" : "\$ 50",
    },
    {
      "carImage" : "assets/images/Carphoto.png",
      "carModel" : "Toyota harrier",
      "transitionId" : 0284784575355,
      "tripNo" : 05,
      "amount" : "\$ 56",
    },
    {
      "carImage" : "assets/images/Carphoto.png",
      "carModel" : "Toyota harrier",
      "transitionId" : 02847845758574,
      "tripNo" : 07,
      "amount" : "\$ 60",
    },
    {
      "carImage" : "assets/images/Carphoto.png",
      "carModel" : "Toyota harrier",
      "transitionId" : 028478457585767,
      "tripNo" : 08,
      "amount" : "\$ 70",
    }

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(tripNo.length, (index){
          return Padding(
            padding:  EdgeInsets.only(bottom: 8),
            child: Container(
              padding:  EdgeInsets.only(left: 8,right:16,top: 8,bottom: 8),
              decoration: ShapeDecoration(
                color: const Color(0xffffffff),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFE6E7F4)),
                  borderRadius: BorderRadius.circular(8),
                ),
                shadows:  [
                  BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.01),
                    blurRadius: 10,
                    offset: const Offset(0, 1),
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
                      image:   DecorationImage(
                        image: AssetImage(tripNo[index]["carImage"]),
                        fit: BoxFit.fill,
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
                        Text(
                          tripNo[index]["carModel"],
                          style: const TextStyle(
                            color: Color(0xFF000B90),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'Transition ID: ',
                                    style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: tripNo[index]["transitionId"].toString(),
                                    style: const TextStyle(
                                      color: Color(0xFF2E2C2C),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              tripNo[index]["amount"],
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                color: Color(0xFF000B90),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Trip no: ',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: (tripNo[index]["tripNo"].toString()),
                                style: const TextStyle(
                                  color: Color(0xFF2E2C2C),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        })
    );
  }
}
