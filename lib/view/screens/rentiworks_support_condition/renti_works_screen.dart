import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RentiWorkScreen extends StatelessWidget {
  const RentiWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
            text: AppStaticStrings.howRentWorks,
            color: AppColors.blackNormal,
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              const SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                    text: 'Lorem ipsum dolor sit amet consectetur',
                    fontSize: 16,
                    textAlign: TextAlign.start,
                    bottom: 8,
                    fontWeight: FontWeight.w500),
                CustomText(
                  textAlign: TextAlign.start,
                  text:
                      'Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque mauris. In pellentesque adipiscing nec eget platea euismod massa. Cras urna nulla nulla urna faucibus.',
                  color: AppColors.whiteDarker,
                  bottom: 16,
                ),
                CustomText(
                    text: 'Lorem ipsum dolor sit amet consectetur',
                    fontSize: 16,
                    textAlign: TextAlign.start,
                    bottom: 8,
                    fontWeight: FontWeight.w500),
                CustomText(
                    textAlign: TextAlign.start,
                    text:
                        'Lorem ipsum dolor sit amet consectetur. Imperdiet iaculis convallis bibendum massa id elementum consectetur neque mauris. In pellentesque adipiscing nec eget platea euismod massa. Cras urna nulla nulla urna faucibus.',
                    color: AppColors.whiteDarker),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
