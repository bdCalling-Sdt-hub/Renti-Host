import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/helper/date_converter_helper.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class ReservedDetails extends StatelessWidget {
  const ReservedDetails({super.key, required this.homeCarListModel, required this.index});
  final HomeCarListModel homeCarListModel;
  final int index;
  @override
  Widget build(BuildContext context) {

    String startDateString = "${homeCarListModel.cars?[index].paymentId?.rentId?.startDate}";

    String endDateString = "${homeCarListModel.cars?[index].paymentId?.rentId?.endDate}";
    // Define a regular expression pattern to match the date part
    RegExp datePattern = RegExp(r"(\d{4}-\d{2}-\d{2})");

    // Use the regular expression to extract the date part
    String formattedStartDate = datePattern.firstMatch(startDateString)?.group(0) ?? '';
    String formattedEndDate = datePattern.firstMatch(endDateString)?.group(0) ?? '';

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: "Car model: ".tr,
                fontSize: 16,
                color: AppColors.whiteDarkHover),
            const SizedBox(width: 24),
            Flexible(
              child: CustomText(
                maxLines: 1,overflow: TextOverflow.ellipsis,
                  text: "${homeCarListModel.cars?[index].carModelName}",
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: "Number of Doors: ".tr,
                fontSize: 16,
                color: AppColors.whiteDarkHover),
            const SizedBox(width: 24),
            Flexible(
              child: CustomText(
                maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: "${homeCarListModel.cars?[index].carDoors}",
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: "Seats: ".tr,
                fontSize: 16,
                color: AppColors.whiteDarkHover),
            const SizedBox(width: 24),
            Flexible(
              child: CustomText(
                maxLines: 1,overflow: TextOverflow.ellipsis,
                  text: "${homeCarListModel.cars?[index].carSeats}",
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: "Car Color: ".tr,
                fontSize: 16,
                color: AppColors.whiteDarkHover),
            const SizedBox(width: 24),
            Flexible(
              child: CustomText(
                maxLines: 1,overflow: TextOverflow.ellipsis,
                  text: "${homeCarListModel.cars?[index].carColor}",
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: "Car license no: ".tr,
                fontSize: 16,
                color: AppColors.whiteDarkHover),
            const SizedBox(width: 24),
            Flexible(
              child: CustomText(
                maxLines: 1,overflow: TextOverflow.ellipsis,
                  text: "${homeCarListModel.cars?[index].carLicenseNumber}",
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: "Registration date: ".tr,
                fontSize: 16,
                color: AppColors.whiteDarkHover),
            const SizedBox(width: 24),
            Flexible(
              child: CustomText(
                maxLines: 1,overflow: TextOverflow.ellipsis,
                  text: "${homeCarListModel.cars?[index].registrationDate}",
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: "Insurance date: ".tr,
                fontSize: 16,
                color: AppColors.whiteDarkHover),
            const SizedBox(width: 24),
            CustomText(
              maxLines: 1,overflow: TextOverflow.ellipsis,
                text: "${homeCarListModel.cars?[index].insuranceEndDate}",
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ],
        ),

        //This Section Needed When car in Reserved
        homeCarListModel.cars![index].tripStatus == "Start" ?
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: "Reservation: ".tr,
                    fontSize: 16,
                    color: AppColors.whiteDarkHover),
                const SizedBox(width: 24),
                Flexible(
                  child: CustomText(
                    textAlign: TextAlign.right,
                      maxLines: 2,overflow: TextOverflow.ellipsis,
                      text: "$formattedStartDate - $formattedEndDate",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    text: "User name: ".tr,
                    fontSize: 16,
                    color: AppColors.whiteDarkHover),
                const SizedBox(width: 24),
                Flexible(
                  child: CustomText(
                    maxLines: 1,overflow: TextOverflow.ellipsis,
                      text: "${homeCarListModel.cars?[index].paymentId?.userId?.fullName}",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    text: "Transition no: ".tr,
                    fontSize: 16,
                    color: AppColors.whiteDarkHover),
                const SizedBox(width: 24),
                Flexible(
                  child: CustomText(
                    maxLines: 1, overflow: TextOverflow.ellipsis,
                      text: "${homeCarListModel.cars?[index].paymentId?.paymentData?.balanceTransaction}",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    text: "Trip no: ".tr,
                    fontSize: 16,
                    color: AppColors.whiteDarkHover),
                const SizedBox(width: 24),
                Flexible(child: CustomText(text: "${homeCarListModel.cars?[index].paymentId?.rentId?.rentTripNumber}", fontSize: 16, fontWeight: FontWeight.w500,maxLines: 1,overflow: TextOverflow.ellipsis)),
              ],
            ),
          ],
        ) : const SizedBox(),
      ],
    );
  }
}
