import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/add_cars/add_car_screen/inner_widgets/car_image_scetion.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_start_trip/inner_widgets/rental_information.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_start_trip/inner_widgets/rental_user_information.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class EndTripScreen extends StatefulWidget {
  const EndTripScreen({super.key});

  @override
  State<EndTripScreen> createState() => _EndTripState();
}

class _EndTripState extends State<EndTripScreen> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(
          appBarContent: CustomBack(
              text: AppStaticStrings.carDealInformation,
              color: AppColors.blackNormal),
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return const SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: AppStaticStrings.uploadCarPhoto,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      bottom: 16),
                  // top Section with upload button
                  CarImageSection(),
                  SizedBox(height: 16),
                  RentalInformation(),
                  SizedBox(height: 24),
                  //User Information Section
                  RentalUserInformation(),
                  SizedBox(height: 80),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: CustomElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoute.endTripReviewScreen);
              },
              titleText: AppStaticStrings.endTrip,
              buttonHeight: 48),
        ),
      ),
    );
  }
}
