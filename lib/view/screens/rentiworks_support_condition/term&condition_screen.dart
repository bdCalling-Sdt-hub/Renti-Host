import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
            text: AppStaticStrings.termsConditions,
            color: AppColors.blackNormal,
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              children: [
                CustomText(
                  text: '1. Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque masris.',
                  textAlign: TextAlign.start,
                  bottom: 8,
                ),
                CustomText(
                  text: '2. Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque masris.',
                  textAlign: TextAlign.start,
                  bottom: 8,
                ),
                CustomText(
                  text: '3. Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque masris.',
                  textAlign: TextAlign.start,
                  bottom: 8,
                ),
                CustomText(
                  text: '4. Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque masris.',
                  textAlign: TextAlign.start,
                  bottom: 8,
                ),
                CustomText(
                  text: '5. Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque masris.',
                  textAlign: TextAlign.start,
                  bottom: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
