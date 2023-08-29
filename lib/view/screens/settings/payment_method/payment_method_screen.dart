import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:renti_host/view/screens/settings/payment_method/debit_card_name/debit_card_name_screen.dart';
import 'package:renti_host/view/screens/settings/settings/settings_screen.dart';

import 'add_debit_card/add_debit_card_screen.dart';

class Payment_Method_Screen extends StatefulWidget {
  const Payment_Method_Screen({super.key});

  @override
  State<Payment_Method_Screen> createState() => _Payment_Method_ScreenState();
}

class _Payment_Method_ScreenState extends State<Payment_Method_Screen> {
  // initialize the tab controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          extendBody: true,
      backgroundColor: const Color(0xFFFFFFFF),
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
      ),
      body:  Padding(
        padding: const EdgeInsets.only(top:16,left: 20,right: 20,bottom: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [


               const SizedBox(height: 24,),
               Column(
                children: List.generate( 4, (index){
                return   Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: InkWell(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const DebitCardNameScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffcccccc),width: 1)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset("assets/images/debit_card.svg"),
                                  const SizedBox(width: 16,),
                                  const Text('Debit Card',style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 16,

                                    fontWeight: FontWeight.w500,

                                  ),),
                                ],
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Color(0xFF2E2C2C),
                              )
                            ],
                          ),
                      ),
                    ),
                  ),
                );

                }
                ),
              ),
              const SizedBox(height: 28,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const AddDebitCardScreen()));
                },
                child: const Row(
                  children: [
                    Icon(Icons.add_circle_outline,
                      color: Color(0xFF000B90),
                      size: 24,
                    ),
                    SizedBox(width: 8,),
                    Text("Add Card",
                      style: TextStyle(
                        color: Color(0xFF000B90),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1.40,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

     )
    );
  }
}
