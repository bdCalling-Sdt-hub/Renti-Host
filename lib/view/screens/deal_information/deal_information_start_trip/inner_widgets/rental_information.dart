import 'package:flutter/cupertino.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RentalInformation extends StatelessWidget {
  const RentalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: AppStaticStrings.rentalInformation,fontSize: 16,fontWeight: FontWeight.w500,bottom: 16),

        //This Section Only Come in End Trip Section
        /*Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.tripNo,color: AppColors.whiteDarkHover,fontSize: 16),
            CustomText(text: "06",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8),*/

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.carModel,color: AppColors.whiteDarkHover,fontSize: 16),
            CustomText(text: "Toyota Corolla",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.carYear,color: AppColors.whiteDarkHover,fontSize: 16),
            CustomText(text: "2015",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.carColor1,color: AppColors.whiteDarkHover,fontSize: 16),
            CustomText(text: "Blue",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.carLicense,color: AppColors.whiteDarkHover,fontSize: 16),
            CustomText(text: "61-10-TMD",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.gearType1,color: AppColors.whiteDarkHover,fontSize: 16),
            CustomText(text: "Manual",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.rentalTime,color: AppColors.whiteDarkHover,fontSize: 16),
            CustomText(text: "12pm - 12am",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.rentalDate,color: AppColors.whiteDarkHover,fontSize: 16),
            CustomText(text: "08 aug 2023 - 09 aug 2023",fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
      ],
    );
  }
}
