import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/settings/privacy_policy/privacy_policy_screen.dart';
import 'package:renti_host/view/screens/settings/settings/inner_widgets/setting_name.dart';
import '../change_language/change_language.dart';
import '../change_password/change_password_screen.dart';
import '../payment_method/payment_method_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {



  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 18,
              color:  Color(0xff2E2C2C),
            ),
          ),
          titleSpacing: -8,
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFFFFFFFF),
          title: const Text(
            'Settings',
            style: TextStyle(
                color: Color(0xFF2E2C2C),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20, right: 20, bottom: 24, top: 24),
                child: SettingName(
                ),
                ),
              ),

        ),
      ),
    );
  }
}
