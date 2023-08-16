import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/income_page/renti_free/inner_widget/renti_fee_card.dart';

import '../income/income_screen.dart';
import '../my_payment/payment_screen.dart';

class RentiFeeScreen extends StatefulWidget {
  const RentiFeeScreen({super.key});

  @override
  State<RentiFeeScreen> createState() => _RentiFeeScreenState();
}

List <int> tripNo = [
  1,7,5,6,7,
];
class _RentiFeeScreenState extends State<RentiFeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            automaticallyImplyLeading: true,
            titleSpacing: -8,
            title: const Text(
              'Renti Fee',
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
              color: const Color(0xff2E2C2C),
            )),
        body: LayoutBuilder(builder: (context,constraint){
          return  SingleChildScrollView(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal:20 ),
            child: Column(
                children: List.generate(tripNo.length, (index){
                  return Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: RentiFeeCard(),
                  );
                })
            ),
          );
        })
    );
  }
}
