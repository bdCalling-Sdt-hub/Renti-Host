import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/rent_request/user_request_details/inner_widgets/request_car_details.dart';
import 'package:renti_host/view/screens/rent_request/user_request_details/inner_widgets/request_car_details_card.dart';
import 'package:renti_host/view/screens/rent_request/user_request_details/inner_widgets/user_details_top_section.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';

class UserRequestDetailsScreen extends StatelessWidget {
  const UserRequestDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
              text: AppStaticStrings.userDetails, color: AppColors.blackNormal),
        ),
        body: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UserDetailsTopSection(),
                const RequestCarDetails(),
                const RequestCarDetailsCard(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: CustomElevatedButton(
                      onPressed: () {},
                      titleText: AppStaticStrings.cancel,
                      buttonHeight: 48,
                      titleWeight: FontWeight.w500,
                      buttonColor: AppColors.redLight,
                      titleColor: AppColors.redNormal,
                    )),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: CustomElevatedButton(
                      onPressed: () {},
                      titleText: AppStaticStrings.approve,
                      buttonHeight: 48,
                      titleWeight: FontWeight.w500,
                    )),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
