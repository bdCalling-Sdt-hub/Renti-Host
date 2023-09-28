import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';
import 'package:renti_host/view/screens/add_cars/add_car_screen/inner_widgets/car_image_scetion.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_start_trip/inner_widgets/rental_information.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_start_trip/inner_widgets/rental_user_information.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class StartTripScreen extends StatefulWidget {
  const StartTripScreen({super.key});

  @override
  State<StartTripScreen> createState() => _StartTripScreenState();
}

class _StartTripScreenState extends State<StartTripScreen> {
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
            return SingleChildScrollView(
              padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 24, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                      text: AppStaticStrings.uploadCarPhoto,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      bottom: 16),
                  // top Section with upload button
                  CarImageSection(
                      homeCarListodel: HomeCarListModel(), index: 0),
                  const SizedBox(height: 16),
                  CustomElevatedButton(
                    onPressed: () {},
                    titleText: AppStaticStrings.uploadCarPhoto,
                    buttonHeight: 48,
                    titleSize: 16,
                    titleWeight: FontWeight.w500,
                    buttonWidth: double.maxFinite,
                  ),
                  const SizedBox(height: 16),
                  const RentalInformation(),
                  const SizedBox(height: 24),
                  //User Information Section
                  const RentalUserInformation(),
                  const SizedBox(height: 80),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: CustomElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoute.endTripScreen);
              },
              titleText: AppStaticStrings.startTrip,
              buttonHeight: 48),
        ),
      ),
    );
  }
}
