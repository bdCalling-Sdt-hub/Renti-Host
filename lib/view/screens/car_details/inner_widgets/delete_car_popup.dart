import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class DeleteCarPopUp extends StatefulWidget {
  const DeleteCarPopUp({super.key});

  @override
  State<DeleteCarPopUp> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<DeleteCarPopUp> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          const CustomText(
            text: AppStaticStrings.wantToDeleteCar,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 0),
            child: Divider(
              height: 1,
              color: AppColors.blackLightHover,
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: CustomElevatedButton(
                      onPressed: () {},
                      titleText: AppStaticStrings.yes,
                      buttonColor: AppColors.redLight,
                      titleColor: AppColors.redNormal,
                      buttonHeight: 48)),
              const SizedBox(width: 8),
              Expanded(
                child: CustomElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    titleText: AppStaticStrings.no,
                    buttonHeight: 48),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
