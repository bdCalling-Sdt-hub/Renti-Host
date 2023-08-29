import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/settings/change_language/change_language.dart';
import 'package:renti_host/view/screens/settings/change_password/change_password_screen.dart';
import 'package:renti_host/view/screens/settings/payment_method/payment_method_screen.dart';
import 'package:renti_host/view/screens/settings/privacy_policy/privacy_policy_screen.dart';
import 'package:renti_host/view/screens/settings/settings/inner_widgets/dialog_box.dart';

class SettingName extends StatefulWidget {
  const SettingName({
    super.key,
  });

  @override
  State<SettingName> createState() => _SettingNameState();
}

class _SettingNameState extends State<SettingName> {
  double _value = 10;
  List settingData = [
    "change Language",
    "Change Password",
    "Notifications",
    "Payment Method",
    "Privacy Policy"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        settingData.length,
        (index) {
          return GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ChangeLanguageScreen()));
              } else if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ChangePasswordScreen()));
              } else if (index == 2) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const DialogBox();
                    });
              } else if (index == 3) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Payment_Method_Screen()));
              } else if (index == 4) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen()));
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE6E7F4)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  shadows: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.01),
                      blurRadius: 10,
                      offset: const Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        settingData[index],
                        style: const TextStyle(
                            color: Color(0xFF2E2C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Color(0xFF2E2C2C),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
