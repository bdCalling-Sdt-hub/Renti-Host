import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
            text: AppStaticStrings.privacyPolicy,
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
                  text:
                      'Lorem ipsum dolor sit amet consectetur. Purus egestas elit adipiscing adipiscing. Urna quis velit pretium ipsum eleifend. Dui est tortor pharetra lectus ipsum. Odio risus ac tempus ultricies natoque ac nunc non faucibus. Id nisi diam tempor odio elit elit ultricies arcu.',
                  maxLines: 6,
                  textAlign: TextAlign.start,
                  color: AppColors.whiteDarker,
                  bottom: 16,
                ),
                CustomText(
                  text:
                      'Lorem ipsum dolor sit amet consectetur. Purus egestas elit adipiscing adipiscing. Urna quis velit pretium ipsum eleifend. Dui est tortor pharetra lectus ipsum. Odio risus ac tempus ultricies natoque ac nunc non faucibus. Id nisi diam tempor odio elit elit ultricies arcu.',
                  maxLines: 6,
                  color: AppColors.whiteDarker,
                  textAlign: TextAlign.start,
                  bottom: 16,
                ),
                CustomText(
                  text:
                      'Lorem ipsum dolor sit amet consectetur. Purus egestas elit adipiscing adipiscing. Urna quis velit pretium ipsum eleifend. Dui est tortor pharetra lectus ipsum. Odio risus ac tempus ultricies natoque ac nunc non faucibus. Id nisi diam tempor odio elit elit ultricies arcu.',
                  maxLines: 6,
                  color: AppColors.whiteDarker,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
