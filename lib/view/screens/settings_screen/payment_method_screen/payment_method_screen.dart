import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/settings_screen/payment_method_screen/add_credit_card_screen/add_credit_card_screen.dart';
import 'package:renti_host/view/screens/settings_screen/payment_method_screen/add_debit_card_screen/add_debit_card_screen.dart';
import 'package:renti_host/view/screens/settings_screen/payment_method_screen/credit_card_name_screen/credit_card_name_screen.dart';
import 'package:renti_host/view/screens/settings_screen/payment_method_screen/debit_card_name_screen/debit_card_name_screen.dart';

import '../settings_screen/settings_screen.dart';

class Payment_Method_Screen extends StatefulWidget {
  const Payment_Method_Screen({super.key});

  @override
  State<Payment_Method_Screen> createState() => _Payment_Method_ScreenState();
}

class _Payment_Method_ScreenState extends State<Payment_Method_Screen> {
  // initialize the tab controller

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SettingsScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 14,
            ),
            color: const Color(0xff2E2C2C),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFFFFFFFF),
          title: const Text(
            'Payment Method',
            style: TextStyle(
                color: Color(0xFF2E2C2C),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Credit Card',
            ),
            Tab(
              text: 'Debit Card',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                children: [
                 GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_)=>const CreditCardNameScreen()));
                   },
                   child: Column(
                     children: [
                       Container(
                           height: 70,
                           width: MediaQuery.of(context).size.width,
                           decoration: ShapeDecoration(
                             color: Colors.white,
                             shape: RoundedRectangleBorder(
                               side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                             padding: EdgeInsets.all(12.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text('Credit Card'),
                                 Icon(
                                   Icons.arrow_forward_ios,
                                   size: 16,
                                   color: Color(0xFF2E2C2C),
                                 )
                               ],
                             ),
                           )),
                       const SizedBox(
                         height: 8,
                       ),
                       Container(
                           height: 70,
                           width: MediaQuery.of(context).size.width,
                           decoration: ShapeDecoration(
                             color: Colors.white,
                             shape: RoundedRectangleBorder(
                               side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                             padding: EdgeInsets.all(12.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text('Credit Card'),
                                 Icon(
                                   Icons.arrow_forward_ios,
                                   size: 16,
                                   color: Color(0xFF2E2C2C),
                                 )
                               ],
                             ),
                           )),
                       const SizedBox(
                         height: 8,
                       ),
                       Container(
                           height: 70,
                           width: MediaQuery.of(context).size.width,
                           decoration: ShapeDecoration(
                             color: Colors.white,
                             shape: RoundedRectangleBorder(
                               side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                             padding: EdgeInsets.all(12.0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text('Credit Card'),
                                 Icon(
                                   Icons.arrow_forward_ios,
                                   size: 16,
                                   color: Color(0xFF2E2C2C),
                                 )
                               ],
                             ),
                           )),
                     ],
                   ),
                 ),
                  const SizedBox(
                    height: 28,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => AddCreditCardScreen()));
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/logos/radix.png',
                          height: 24,
                          width: 24,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Add New',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000B90)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const DebitCardNameScreen()));
                    },
                    child: Column(
                      children: [
                        Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Credit Card'),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Color(0xFF2E2C2C),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Credit Card'),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Color(0xFF2E2C2C),
                                  )
                                ],
                              ),
                            )),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Credit Card'),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Color(0xFF2E2C2C),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const AddDebitCardScreen()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                          size: 18,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Add New',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000B90)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
