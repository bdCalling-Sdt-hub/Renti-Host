
import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/income_page/my_payment/payment_screen.dart';
import 'package:renti_host/view/screens/income_page/renti_free/renti_free_Screen.dart';
import 'package:renti_host/view/screens/income_page/weekly_income/weekly_screen.dart';

class IncomeCategory extends StatefulWidget {
  const IncomeCategory({super.key});

  @override
  State<IncomeCategory> createState() => _IncomeCategoryState();
}

class _IncomeCategoryState extends State<IncomeCategory> {
  List incomeList = ["Weekly Income", " Renti Fee", "My Payment"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(incomeList.length, (index) {
        return  GestureDetector(
          onTap: (){
             if(index==0){
               Navigator.push(context, MaterialPageRoute(builder: (_)=>const WeeklyScreen()));
             }
             else if(index==1){
               Navigator.push(context, MaterialPageRoute(builder: (_)=>const RentiFeeScreen()));
             }
             else{
               Navigator.push(context, MaterialPageRoute(builder: (_)=>const PaymentScreen()));
             }
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: ShapeDecoration(
                color: Colors.white,
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
              child:  Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 16, vertical: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            incomeList[index],
                            style: const TextStyle(
                              color: Color(0xFF2E2C2C),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.40,
                            ),
                          ),
                          const Icon(
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
        );
      }),
    );
  }
}
