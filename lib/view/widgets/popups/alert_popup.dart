import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class AlertPopUp extends StatelessWidget {
  const AlertPopUp({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.whiteLight,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(text: title, fontSize: 18, fontWeight: FontWeight.w600),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: Divider(
              height: 1,
              color: AppColors.blackLightHover,
            ),
          ),
          CustomElevatedButton(
            onPressed: onTap,
            titleText: "Retry",
            buttonColor: AppColors.blueNormal,
            titleColor: AppColors.whiteLight,
            buttonHeight: 48,buttonWidth: double.maxFinite,
          ),
        ],
      ),
    );
  }
}
