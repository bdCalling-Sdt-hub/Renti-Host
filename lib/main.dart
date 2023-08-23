import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/rent_request/user_request/user_request_screen.dart';
import 'package:renti_host/view/screens/review_page/review_screen.dart';
import 'package:renti_host/view/screens/user_list/user_list_page/userlistscreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserListScreen()
    );
  }
}
