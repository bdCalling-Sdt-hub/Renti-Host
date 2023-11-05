import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class ReservedDetails extends StatelessWidget {
  const ReservedDetails({super.key, required this.homeCarListModel, required this.index});
  final HomeCarListModel homeCarListModel;
  final int index;
  @override
  Widget build(BuildContext context) {
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
                  text: homeCarListModel.cars![index].carModelName.toString(),
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
                  text: homeCarListModel.cars![index].carDoors.toString(),
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
                  text: homeCarListModel.cars![index].carSeats.toString(),
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
                  text: homeCarListModel.cars![index].carColor.toString(),
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
                  text: homeCarListModel.cars![index].carLicenseNumber.toString(),
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
                  text: homeCarListModel.cars![index].registrationDate.toString(),
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
                text: homeCarListModel.cars![index].insuranceEndDate.toString(),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    text: "Reservation: ".tr,
                    fontSize: 16,
                    color: AppColors.whiteDarkHover),
                const SizedBox(width: 24),
                const CustomText(
                    maxLines: 1,overflow: TextOverflow.ellipsis,
                    text: "10 aug 2023 - 11 aug 2024",
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
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
                CustomText(
                  maxLines: 1,overflow: TextOverflow.ellipsis,
                    text: homeCarListModel.cars![index].userId.toString(),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
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
                const CustomText(
                    text: "1125442024",
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
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
                const CustomText(text: "10", fontSize: 16, fontWeight: FontWeight.w500),
              ],
            ),
          ],
        ) : const SizedBox(),
      ],
    );
  }
}
