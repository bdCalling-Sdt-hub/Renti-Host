import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/income_page/income/inner_widgets/income_category.dart';
import 'package:renti_host/view/screens/income_page/weekly_income/inner-widgets/income_details.dart';
import '../income/income_screen.dart';
class WeeklyScreen extends StatefulWidget {
  const WeeklyScreen({super.key});

  @override
  State<WeeklyScreen> createState() => _WeeklyScreenState();
}


class _WeeklyScreenState extends State<WeeklyScreen> {
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
            'Weekly Income',
            style: TextStyle(
              color: Color(0xFF2E2C2C),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          leading: IconButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (_)=>const IncomeScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              weight: 18,
              size: 18,
            ),
            color: const Color(0xff2E2C2C),
          )),
      body: LayoutBuilder(builder: (context,constraint){
        return  const SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsetsDirectional.symmetric(vertical: 24,horizontal:20 ),
            child: WeeklyIncomeDetails()
          ),
        );
      })
    );
  }
}
