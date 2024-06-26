import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_start_trip/inner_widgets/rental_information.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_start_trip/inner_widgets/rental_user_information.dart';
import 'package:renti_host/view/screens/deal_information/inner_widgets/image_scetion.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_model/rent_list_model.dart';
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
    List<RentedCar> rentListModel = Get.arguments[0];
    int index = Get.arguments[1];
    return /*SafeArea(
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
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
                      homeCarListModel: HomeCarListModel(), index: 0),
                  const SizedBox(height: 16),
                  //const RentalInformation(),
                  const SizedBox(height: 24),
                  //User Information Section
                  //const RentalUserInformation(),
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
                Get.toNamed(AppRoute.endTripReviewScreen);
              },
              titleText: AppStaticStrings.endTrip,
              buttonHeight: 48),
        ),
      ),
    )*/
      SafeArea(
        top: true,
        child: Scaffold(
          extendBody: true,
          backgroundColor: AppColors.whiteLight,
          appBar: CustomAppBar(
            appBarContent: CustomBack(
                text: "Car Deal Information".tr,
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
                    CustomText(
                        text: "Upload Car Photo".tr,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        bottom: 16),

                    // top Section with upload button
                    DealImageSection(
                        image1: rentListModel[index].carId!.image![0]
                            .toString(),
                        image2: rentListModel[index].carId!.image![1]
                            .toString(),
                        image3: rentListModel[index].carId!.image![2]
                            .toString()),
                    const SizedBox(height: 16),
                    CustomElevatedButton(
                      onPressed: () {},
                      titleText: "Upload Car Photo".tr,
                      buttonHeight: 48,
                      titleSize: 16,
                      titleWeight: FontWeight.w500,
                      buttonWidth: double.maxFinite,
                    ),
                    const SizedBox(height: 16),
                    RentalInformation(index: index, rentListModel: rentListModel),
                    const SizedBox(height: 24),
                    //User Information Section
                    RentalUserInformation(index: index, rentListModel: rentListModel),
                    const SizedBox(height: 24),
                    CustomElevatedButton(
                        onPressed: () {
                          Get.toNamed(AppRoute.endTripReviewScreen);
                        },
                        titleText: "End trip".tr,
                        buttonHeight: 48,buttonWidth: double.maxFinite),
                  ],
                ),
              );
            },
          ),
        ),
      );
  }
}
