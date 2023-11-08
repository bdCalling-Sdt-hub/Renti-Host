import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/helper/date_converter_helper.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_model/rent_list_model.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RentalInformation extends StatelessWidget {
  const RentalInformation({super.key, required this.rentListModel, required this.index});

  final RentListModel rentListModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: "Rental Information".tr,fontSize: 16,fontWeight: FontWeight.w500,bottom: 16),

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
            CustomText(text: "Car model: ".tr,color: AppColors.whiteDarkHover,fontSize: 16),
            const SizedBox(width: 24),
            Flexible(child: CustomText(text: rentListModel.rentedCars![index].carId!.carModelName.toString(),fontSize: 16,fontWeight:FontWeight.w500,maxLines: 1,overflow: TextOverflow.ellipsis)),
          ],
        ),
        const SizedBox(height: 8),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: "Car year:".tr,color: AppColors.whiteDarkHover,fontSize: 16),
            const SizedBox(width: 24),
            Flexible(child: CustomText(text: rentListModel.rentedCars![index].carId!.year.toString(),fontSize: 16,fontWeight:FontWeight.w500,maxLines: 1,overflow: TextOverflow.ellipsis)),
          ],
        ),
        const SizedBox(height: 8),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: "Car Color: ".tr,color: AppColors.whiteDarkHover,fontSize: 16),
            const SizedBox(width: 24),
            Flexible(child: CustomText(text: rentListModel.rentedCars![index].carId!.carColor.toString(),fontSize: 16,fontWeight:FontWeight.w500,maxLines: 1,overflow: TextOverflow.ellipsis)),
          ],
        ),
        const SizedBox(height: 8),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: "Car license no: ".tr,color: AppColors.whiteDarkHover,fontSize: 16),
            const SizedBox(width: 24),
            Flexible(child: CustomText(text: rentListModel.rentedCars![index].carId!.carLicenseNumber.toString(),fontSize: 16,fontWeight:FontWeight.w500,maxLines: 1,overflow: TextOverflow.ellipsis)),
          ],
        ),
        const SizedBox(height: 8),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: "Gear Type:".tr,color: AppColors.whiteDarkHover,fontSize: 16),
            CustomText(text: rentListModel.rentedCars![index].carId!.gearType.toString(),fontSize: 16,fontWeight:FontWeight.w500),
          ],
        ),
        const SizedBox(height: 8),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: "Rental time:".tr,color: AppColors.whiteDarkHover,fontSize: 16),
            const SizedBox(width: 24),
            Flexible(child: CustomText(text: rentListModel.rentedCars![index].totalHours.toString(),fontSize: 16,fontWeight:FontWeight.w500,maxLines: 1,overflow: TextOverflow.ellipsis)),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: "Rental Date:".tr,color: AppColors.whiteDarkHover,fontSize: 16),
            const SizedBox(width: 24),
            Flexible(child: CustomText(text: DateConverter.isoStringToLocalDateOnly("${rentListModel.rentedCars?[index].startDate}"),fontSize: 16,fontWeight:FontWeight.w500)),
          ],
        ),
      ],
    );
  }
}
