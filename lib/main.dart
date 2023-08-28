import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/income_page/income/income_screen.dart';
import 'package:renti_host/view/screens/message/inbox/inbox_screen.dart';
import 'package:renti_host/view/screens/message/messages/messages_screen.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IncomeScreen()
    );
  }
}
