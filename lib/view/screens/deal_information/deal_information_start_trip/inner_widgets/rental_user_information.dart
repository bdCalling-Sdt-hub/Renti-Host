import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RentalUserInformation extends StatelessWidget {
  const RentalUserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: AppStaticStrings.userInformation,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            bottom: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: AppStaticStrings.name,
                color: AppColors.whiteDarkHover,
                fontSize: 16),
            CustomText(
                text: "Ahmed",
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: AppStaticStrings.iNE,
                color: AppColors.whiteDarkHover,
                fontSize: 16),
            CustomText(
                text: "123456789",
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: AppStaticStrings.drivingLicense,
                color: AppColors.whiteDarkHover,
                fontSize: 16),
            CustomText(
                text: "61-10-2022",
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: AppStaticStrings.pickUpLocation,
                color: AppColors.whiteDarkHover,
                fontSize: 16),
            CustomText(
                text: "Mexico",
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ],
        ),
      ],
    );
  }
}
