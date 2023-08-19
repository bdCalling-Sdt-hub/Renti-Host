import 'package:flutter/material.dart';

import '../income/income_screen.dart';
import 'inner_widgets/payment_card.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}


class _PaymentScreenState extends State<PaymentScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          automaticallyImplyLeading: true,
          titleSpacing: -8,
          title: const Text(
            'My Payment',
            style: TextStyle(
              color: Color(0xFF2E2C2C),
              fontSize: 18,

              fontWeight: FontWeight.w600,
              height: 1.40,
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          leading: IconButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (_)=>IncomeScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              weight: 18,
              size: 18,
            ),
            color: Colors.black,
          )),
      body:LayoutBuilder(builder: (context,constraint){
        return  SingleChildScrollView(
          child:PaymentCard()
        );
      }),
    );
  }
}
