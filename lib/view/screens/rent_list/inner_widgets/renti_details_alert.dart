import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/rent_list/inner_widgets/rent_details_top_section.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/rent_details/custom_rent_details.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RentDetailsAlert extends StatelessWidget {
  const RentDetailsAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.whiteLight,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 10,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RentDetailsTopSection(
                  image: AppImages.blueCar,
                  carName: "Toyota Harrier",
                  carModel: "2020",
                  status: AppStaticStrings.reserved,
                  carLicense: "NBG1234567"),
              const SizedBox(height: 16),
              const CustomRentDetails(title: AppStaticStrings.tripNo, data: "01"),
              const SizedBox(height: 8),
              const CustomRentDetails(
                  title: AppStaticStrings.startDate1, data: '9 aug 2023'),
              const SizedBox(height: 8),
              const CustomRentDetails(
                  title: AppStaticStrings.endDate1, data: '10 aug 2023'),
              const CustomText(
                  text: AppStaticStrings.userInformation,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  top: 24,
                  bottom: 16),
              const CustomRentDetails(
                  title: AppStaticStrings.name,
                  data: AppStaticStrings.userName),
              const SizedBox(height: 8),
              const CustomRentDetails(
                  title: AppStaticStrings.contact, data: '+52 1526363840'),
              const SizedBox(height: 8),
              const CustomRentDetails(
                  title: AppStaticStrings.email1, data: 'johndoe@gmail.com'),
              const SizedBox(height: 8),
              const CustomRentDetails(
                  title: AppStaticStrings.iNE, data: '1231 1231 1231 1231'),
              const SizedBox(height: 8),
              const CustomRentDetails(
                  title: AppStaticStrings.drivingLicense, data: 'ACD1234566'),
              const SizedBox(height: 24),

              //This Button Only Show When Reserve Status card Clicked
              CustomElevatedButton(onPressed: (){
                Get.toNamed(AppRoute.endTripScreen);
              }, titleText: AppStaticStrings.seeDetails,buttonWidth: double.maxFinite,buttonHeight: 48)
            ],
          ),
        ),
      ),
    );
  }
}
