import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/income_page/income/income_screen.dart';
import 'package:renti_host/view/screens/message/messages/messages_screen.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_pop/rent_list_screen.dart';
import 'package:renti_host/view/screens/rent_request/user_details/user_details_screen.dart';
import 'package:renti_host/view/screens/rent_request/user_request/user_request_screen.dart';
import 'package:renti_host/view/screens/review_page/review_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

home: RentListScreen(),

    );
  }
}
