import 'package:flutter/material.dart';

import '../income/income_screen.dart';
import '../renti_free/renti_free_Screen.dart';

class WeeklyScreen extends StatefulWidget {
  const WeeklyScreen({super.key});

  @override
  State<WeeklyScreen> createState() => _WeeklyScreenState();
}
List <int> tripNo = [
  1,7,5,6,7,
];
class _WeeklyScreenState extends State<WeeklyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          automaticallyImplyLeading: true,
          titleSpacing: -8,
          title: const Text(
            'Weekly Income',
            style: TextStyle(
              color: Color(0xFF2E2C2C),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Color(0xffffffff),
          leading: IconButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (_)=>IncomeScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              weight: 18,
              size: 18,
            ),
            color: const Color(0xff2E2C2C),
          )),
      body: LayoutBuilder(builder: (context,constraint){
        return  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal:20 ),
            child: Column(
                children: List.generate(tripNo.length, (index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      padding: const EdgeInsets.only(left: 8,right:16,top: 8,bottom: 8),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadows: const [
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
                              image: const DecorationImage(
                                image: AssetImage("assets/images/Carphoto.png"),
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
                                const Text(
                                  'Toyota Harrier',
                                  style: TextStyle(
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
                                          TextSpan(
                                            text: 'Transition ID: ',
                                            style: TextStyle(
                                              color: Color(0xFF999999),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '1223435566',
                                            style: TextStyle(
                                              color: Color(0xFF2E2C2C),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '\$ 50',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF000B90),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Trip no: ',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: tripNo[index].toString(),
                                        style: TextStyle(
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
            ),
          ),
        );
      })
    );
  }
}
