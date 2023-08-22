import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_start_trip/start_trip_screen.dart';
import 'package:renti_host/view/screens/income_page/income/income_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:IncomeScreen(),

    );
  }
}
