import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/rent_list/inner_widgets/rent_details_top_section.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_model/rent_list_model.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/rent_details/custom_rent_details.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

import '../../../../core/global/api_url_container.dart';

class RentDetailsAlert extends StatelessWidget {
  const RentDetailsAlert(
      {super.key, required this.index, required this.rentListModel});

  final int index;
  final List<RentedCar> rentListModel;

  @override
  Widget build(BuildContext context) {
    String startDateString =
        rentListModel[index].startDate.toString();
    String endDateString = rentListModel[index].endDate.toString();

    // Define a regular expression pattern to match the date part
    RegExp datePattern = RegExp(r"(\d{4}-\d{2}-\d{2})");

    // Use the regular expression to extract the date part
    String formattedStartDate = datePattern.firstMatch(startDateString)?.group(0) ?? '';

    String formattedEndDate = datePattern.firstMatch(endDateString)?.group(0) ?? '';

    return AlertDialog(
      backgroundColor: AppColors.whiteLight,
      contentPadding: const EdgeInsets.all(0),
      content: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          width: double.maxFinite,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RentDetailsTopSection(
                  image: "${ApiUrlContainer.imageUrl}${rentListModel[index].carId!.image![0]}",
                  carName: rentListModel[index].carId!.carModelName.toString(),
                  carModel: rentListModel[index].carId!.year.toString(),
                  requestStatus: rentListModel[index].requestStatus.toString(),
                  carLicense: rentListModel[index].carId!.carLicenseNumber.toString(),
                  payment: rentListModel[index].payment.toString(),
                  tripStatus: rentListModel[index].carId!.tripStatus.toString()),
              const SizedBox(height: 16),
              CustomRentDetails(
                  title: "Trip no: ".tr,
                  data: "${rentListModel[index].rentTripNumber}"),
              const SizedBox(height: 8),
              CustomRentDetails(
                  title: "Start Date: ".tr, data: formattedStartDate),
              const SizedBox(height: 8),
              CustomRentDetails(title: "End Date: ".tr, data: formattedEndDate),
              CustomText(
                  text: "User Information".tr,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  top: 24,
                  bottom: 16),
              CustomRentDetails(
                  title: "Name:".tr,
                  data: rentListModel[index].userId!.fullName
                      .toString()),
              const SizedBox(height: 8),
              CustomRentDetails(
                  title: "Contact: ".tr,
                  data: rentListModel[index].userId!.phoneNumber
                      .toString()),
              const SizedBox(height: 8),
              CustomRentDetails(
                  title: "Email:".tr,
                  data: rentListModel[index].userId!.email
                      .toString()),
              const SizedBox(height: 8),
              CustomRentDetails(
                  title: "INE:".tr,
                  data: rentListModel[index].userId!.ine.toString()),
              // CustomRentDetails(title: "Driving license no:".tr, data: 'ACD1234566'),
              const SizedBox(height: 24),
              rentListModel[index].carId?.tripStatus != "Start" &&
                  rentListModel[index].payment == "Completed"
                  ? SizedBox(
                width: double.maxFinite,
                    child: Row(
                      children: [
                        const Icon(Icons.error_outline,size: 14,color: AppColors.blackNormal),
                        const SizedBox(width: 4),
                        CustomText(text: "Payment Completed Trip Not Start".tr,fontSize: 12,maxLines: 2,overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  )
                  : const SizedBox(),

              //This Button Only Show When Reserve Status card Clicked
              rentListModel[index].carId?.tripStatus == "Start"
                  ? CustomElevatedButton(
                      onPressed: () {
                        Get.toNamed(AppRoute.startTripScreen,
                            arguments: [rentListModel, index]);
                      },
                      titleText: "See details".tr,
                      buttonWidth: double.maxFinite,
                      buttonHeight: 48)
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
