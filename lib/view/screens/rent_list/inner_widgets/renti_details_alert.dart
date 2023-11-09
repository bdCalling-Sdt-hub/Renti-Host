import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/rent_list/inner_widgets/rent_details_top_section.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_model/rent_list_model.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/rent_details/custom_rent_details.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RentDetailsAlert extends StatelessWidget {
   const RentDetailsAlert({super.key, required this.index, required this.rentListModel});

  final int index;
  final RentListModel rentListModel;


  @override
  Widget build(BuildContext context) {
    String startDateString = rentListModel.rentedCars![index].startDate.toString();
    String endDateString = rentListModel.rentedCars![index].endDate.toString();

    // Define a regular expression pattern to match the date part
    RegExp datePattern = RegExp(r"(\d{4}-\d{2}-\d{2})");

    // Use the regular expression to extract the date part
    String formattedStartDate = datePattern.firstMatch(startDateString)?.group(0) ?? '';

    String formattedEndDate = datePattern.firstMatch(endDateString)?.group(0) ?? '';

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
               RentDetailsTopSection(
                  image: rentListModel.rentedCars![index].carId!.image![0],
                  carName: rentListModel.rentedCars![index].carId!.carModelName.toString(),
                  carModel: rentListModel.rentedCars![index].carId!.year.toString(),
                  requestStatus: rentListModel.rentedCars![index].requestStatus.toString(),
                  carLicense: rentListModel.rentedCars![index].carId!.carLicenseNumber.toString(), payment: rentListModel.rentedCars![index].requestStatus.toString(),
                 tripStatus: rentListModel.rentedCars![index].carId!.tripStatus.toString()),
              const SizedBox(height: 16),
               CustomRentDetails(title: "Trip no: ".tr, data: "${rentListModel.rentedCars![index].rentTripNumber}"),
              const SizedBox(height: 8),
               CustomRentDetails(
                  title: "Start Date: ".tr, data: formattedStartDate),
              const SizedBox(height: 8),
               CustomRentDetails(
                  title: "End Date: ".tr, data: formattedEndDate),
              CustomText(
                  text: "User Information".tr,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  top: 24,
                  bottom: 16),
               CustomRentDetails(
                  title: "Name:".tr,
                  data: rentListModel.rentedCars![index].userId!.fullName.toString()),
              const SizedBox(height: 8),
               CustomRentDetails(title: "Contact: ".tr, data: rentListModel.rentedCars![index].userId!.phoneNumber.toString()),
              const SizedBox(height: 8),
               CustomRentDetails(title: "Email:".tr, data: rentListModel.rentedCars![index].userId!.email.toString()),
              const SizedBox(height: 8),
               CustomRentDetails(title: "INE:".tr, data: rentListModel.rentedCars![index].userId!.ine.toString()),
             // CustomRentDetails(title: "Driving license no:".tr, data: 'ACD1234566'),
              const SizedBox(height: 24),

              //This Button Only Show When Reserve Status card Clicked
              rentListModel.rentedCars?[index].carId?.tripStatus != "Start"
                  ? const SizedBox()
                  : CustomElevatedButton(onPressed: (){
                Get.toNamed(AppRoute.startTripScreen,arguments: [rentListModel, index]);
              }, titleText: "See details".tr,buttonWidth: double.maxFinite,buttonHeight: 48)
            ],
          ),
        ),
      ),
    );
  }
}
