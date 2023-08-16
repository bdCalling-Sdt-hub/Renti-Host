import 'package:flutter/material.dart';

import '../my_payment/payment_screen.dart';
import '../renti_free/renti_free_Screen.dart';
import '../weekly_income/weekly_screen.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            automaticallyImplyLeading: true,
            titleSpacing: -8,
            title: const Text('Income',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            backgroundColor: Color(0xffffffff),
            leading: IconButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (_)=>UserRequestScreen()));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                weight: 18,
                size: 18,
              ),
              color: Colors.black,
            )),
        body: LayoutBuilder(builder: (context, constraint) {
          return Padding(
            padding:
                const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 129,
                  decoration: ShapeDecoration(
                    color: const Color(0xff000B90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 10,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Income',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          '\$ 1,20,000.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                 GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_)=>WeeklyScreen()));
                   },
                   child: Container(
                    width: 350,
                    height: 58,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
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
                    child: const Padding(
                        padding: EdgeInsetsDirectional.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Weekly Income',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.40,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  weight: 18,
                                  size: 18,
                                )
                              ],
                            ),
                          ],
                        )),
                ),
                 ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>RentiFeeScreen()));
                  },
                  child: Container(
                    width: 350,
                    height: 58,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
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
                    child: const Padding(
                        padding: EdgeInsetsDirectional.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Renti Fee',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.40,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  weight: 18,
                                  size: 18,
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>PaymentScreen()));
                  },
                  child: Container(
                    width: 350,
                    height: 58,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
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
                    child: const Padding(
                        padding: EdgeInsetsDirectional.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'My Payment',
                                  style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 1.40,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  weight: 18,
                                  size: 18,
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
