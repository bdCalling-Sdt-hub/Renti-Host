import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_start_trip/inner_widgets/rental_information.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_start_trip/inner_widgets/rental_user_information.dart';
import 'package:renti_host/view/screens/deal_information/inner_widgets/image_scetion.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_model/rent_list_model.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class StartTripScreen extends StatefulWidget {
  const StartTripScreen({super.key});

  @override
  State<StartTripScreen> createState() => _StartTripScreenState();
}

class _StartTripScreenState extends State<StartTripScreen> {
  @override
  Widget build(BuildContext context) {
    List<RentedCar> rentListModel = Get.arguments[0];
    int index = Get.arguments[1];

    return SafeArea(
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
                 /* CustomText(
                      text: "Upload Car Photo".tr,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      bottom: 16),*/
                  CustomText(
                      text: "Car Information".tr,
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
                  /*const SizedBox(height: 16),
                  CustomElevatedButton(
                    onPressed: () {},
                    titleText: "Upload Car Photo".tr,
                    buttonHeight: 48,
                    titleSize: 16,
                    titleWeight: FontWeight.w500,
                    buttonWidth: double.maxFinite,
                  ),*/
                  const SizedBox(height: 24),
                  RentalInformation(index: index, rentListModel: rentListModel),
                  const SizedBox(height: 24),
                  //User Information Section
                  RentalUserInformation(index: index, rentListModel: rentListModel),
                  const SizedBox(height: 24),
                  /*CustomElevatedButton(
                      onPressed: () {
                        Get.toNamed(AppRoute.endTripScreen,arguments: [rentListModel,index]);
                      },
                      titleText: "Start trip".tr,
                      buttonHeight: 48,buttonWidth: double.maxFinite),*/
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
