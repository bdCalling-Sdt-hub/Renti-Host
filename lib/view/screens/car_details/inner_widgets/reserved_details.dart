import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class ReservedDetails extends StatelessWidget {
  const ReservedDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.carModel,fontSize: 16,color: AppColors.whiteDarkHover),
            CustomText(text: "2014",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.numberOfDoors,fontSize: 16,color: AppColors.whiteDarkHover),
            CustomText(text: "04",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.seats,fontSize: 16,color: AppColors.whiteDarkHover),
            CustomText(text: "05",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.carColor1,fontSize: 16,color: AppColors.whiteDarkHover),
            CustomText(text: "Blue",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.carLicense,fontSize: 16,color: AppColors.whiteDarkHover),
            CustomText(text: "61-10-TMD",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.registrationDate,fontSize: 16,color: AppColors.whiteDarkHover),
            CustomText(text: "08 aug 2023",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.insuranceDate1,fontSize: 16,color: AppColors.whiteDarkHover),
            CustomText(text: "09 aug 2024",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),


        //This Section Needed When car in Reserved
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(text: AppStaticStrings.reservation,fontSize: 16,color: AppColors.whiteDarkHover),
                CustomText(text: "10 aug 2023 - 11 aug 2024",fontSize: 16,fontWeight:FontWeight.w500),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(text: AppStaticStrings.userName1,fontSize: 16,color: AppColors.whiteDarkHover),
                CustomText(text: "Kabir",fontSize: 16,fontWeight:FontWeight.w500),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(text: AppStaticStrings.transitionNo,fontSize: 16,color: AppColors.whiteDarkHover),
                CustomText(text: "1125442024",fontSize: 16,fontWeight:FontWeight.w500),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(text: AppStaticStrings.tripNo,fontSize: 16,color: AppColors.whiteDarkHover),
                CustomText(text: "10",fontSize: 16,fontWeight:FontWeight.w500),
              ],
            ),
          ],
        ),
      ],
    );
  }
}