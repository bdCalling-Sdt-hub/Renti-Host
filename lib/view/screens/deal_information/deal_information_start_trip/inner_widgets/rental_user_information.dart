import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_model/rent_list_model.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RentalUserInformation extends StatelessWidget {
  const RentalUserInformation({super.key, required this.rentListModel, required this.index});

  final List<RentedCar> rentListModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: "User Information".tr,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            bottom: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: "Name:".tr,
                color: AppColors.whiteDarkHover,
                fontSize: 16),
            Flexible(
              child: CustomText(
                maxLines: 1,overflow:  TextOverflow.ellipsis,
                  text: rentListModel[index].userId!.fullName.toString(),
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
                text: "INE:".tr,
                color: AppColors.whiteDarkHover,
                fontSize: 16),
            CustomText(
                text: rentListModel[index].userId!.ine.toString(),
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
                text: "Driving license no:".tr,
                color: AppColors.whiteDarkHover,
                fontSize: 16),
            const CustomText(
                text: "61-10-2022",
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
                text: "Pickup location:".tr,
                color: AppColors.whiteDarkHover,
                fontSize: 16),
            CustomText(
                text: "${rentListModel[index].hostId?.address?.country}",
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ],
        ),
      ],
    );
  }
}
