import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';
import 'package:renti_host/view/screens/add_cars/add_car_screen/inner_widgets/car_image_scetion.dart';
import 'package:renti_host/view/screens/car_details/inner_widgets/document_file_section.dart';
import 'package:renti_host/view/screens/car_details/inner_widgets/popup_menu.dart';
import 'package:renti_host/view/screens/car_details/inner_widgets/reserved_details.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  HomeCarListModel homeCarListModel = Get.arguments[0];
  int index = Get.arguments[1];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: CustomAppBar(
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: ()=> Get.back(),
                      icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 18,color: AppColors.blackNormal),
                  ),
                  CustomText(text: "Car details".tr,color: AppColors.blackNormal,fontSize: 18,left: 8)
                ],
              ),
              if (homeCarListModel.cars![index].tripStatus != "Start")
                PopUpMenu(
                  homeCarListModel: homeCarListModel,
                  index: index,
                ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarImageSection(homeCarListModel: homeCarListModel, index: index),
              const SizedBox(height: 16),
              //Car Name And Status Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: CustomText(
                        text: homeCarListModel.cars![index].carModelName.toString(),
                        fontSize: 18,maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        color: AppColors.blueNormal,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 24),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: homeCarListModel.cars![index].tripStatus == "Start"
                          ? AppColors.redLight
                          : AppColors.greenLight,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: CustomText(
                        text: homeCarListModel.cars?[index].tripStatus == "Start"
                                ? "Reserved"
                                : "Active",
                        color: homeCarListModel.cars?[index].tripStatus == "Start"
                                ? AppColors.redNormal
                                : AppColors.greenNormal,
                        fontSize: 10),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              //Cost Per Day
              Row(
                children: [
                  CustomText(
                      text: "\$${homeCarListModel.cars![index].hourlyRate.toString()}",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  CustomText(
                      text: "/hr".tr,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ],
              ),
              const SizedBox(height: 24),
              ReservedDetails(homeCarListModel: homeCarListModel, index: index),
              const SizedBox(height: 24),
              DocumentFilesSection(documentsName: homeCarListModel.cars![index].kyc),
            ],
          ),
        ),
      ),
    );
  }
}
