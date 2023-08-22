import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/income_page/my_payment/inner_widgets/pyment_details.dart';

import '../income/income_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
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
        return  const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.only(top:16,bottom:24,end: 20,start: 20 ),
            child: PaymentCard(),
          ),
        );
      }),
    );
  }
}
