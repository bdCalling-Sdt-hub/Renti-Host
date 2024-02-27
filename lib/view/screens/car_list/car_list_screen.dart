import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/%20home/home_controller/home_carlist_controller.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';
import 'package:renti_host/view/screens/car_list/inner_widgets/search_filter.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

import '../../../core/global/api_url_container.dart';

class CarListScreen extends StatefulWidget {
  const CarListScreen({super.key});

  @override
  State<CarListScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCarListController>(
      builder: (controller) {
        HomeCarListModel homeCarModel = controller.homeCarListModel;

        if (controller.isLoading == true) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return SafeArea(
          top: true,
          child: Scaffold(
            backgroundColor: AppColors.whiteLight,
            appBar: CustomAppBar(
              appBarContent: CustomBack(
                  isBack: false,
                  ontap: () {
                    controller.homeCarList(search: "");

                    // navigator!.pop();
                    navigator!.pop();
                  },
                  text: "Cars List".tr,
                  color: AppColors.blackNormal),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                children: [
                  const SearchFilter(),
                  const SizedBox(height: 16),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 24),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: homeCarModel.cars!.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                            mainAxisExtent: 225),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoute.carDetailsScreen,
                                arguments: [homeCarModel, index]);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.whiteLight,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: AppColors.shadowColor,
                                  blurRadius: 8,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.zero,
                                      bottomRight: Radius.zero,
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    ),
                                    image: DecorationImage(
                                        image: CachedNetworkImageProvider("${ApiUrlContainer.imageUrl}${homeCarModel.cars?[index].image?[0]}"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: homeCarModel.cars![index].tripStatus == "Start"
                                              ? AppColors.redLight
                                              : AppColors.greenLight,
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child:  CustomText(
                                          text: homeCarModel.cars ?[index].tripStatus == "Start" ? "Reserved"
                                              :  homeCarModel.cars?[index].isCarActive == "Pending" ? "Pending"
                                              :  homeCarModel.cars?[index].isCarActive == "Active" ? "Active"
                                              : homeCarModel.cars?[index].isCarActive == "Cancel" ? "Cancel"
                                              : "Deactive",
                                          fontSize: 10,
                                          color: homeCarModel.cars ?[index].tripStatus == "Start" ? AppColors.greenLight
                                              :  homeCarModel.cars?[index].isCarActive == "Pending" ? Colors.orangeAccent
                                              :  homeCarModel.cars?[index].isCarActive == "Active" ? AppColors.greenNormal
                                              : homeCarModel.cars?[index].isCarActive == "Cancel" ? AppColors.redNormal
                                              : Colors.orange,

                                        )

                                        /*homeCarModel.cars?[index].tripStatus == "Start"
                                            ? CustomText(
                                            text: "Reserved".toString(),
                                            color: AppColors.redNormal,
                                            fontSize: 10)
                                            : CustomText(
                                            text: "Active".toString(),
                                            color: AppColors.greenNormal,
                                            fontSize: 10),*/
                                      ),
                                      CustomText(
                                          maxLines: 1,overflow: TextOverflow.ellipsis,
                                          text: "${homeCarModel.cars?[index].carModelName}",
                                          fontSize: 12,left: 8),
                                      CustomText(
                                          text: "${homeCarModel.cars?[index].year}",
                                          fontSize: 10,left: 8,
                                          color: AppColors.whiteDarkActive),
                                      CustomText(
                                          text: "${homeCarModel.cars?[index].carLicenseNumber}",
                                          fontSize: 10,
                                          top: 4,left: 8,
                                          bottom: 4),
                                      CustomText(
                                          text: "See details".tr,left: 8,
                                          fontSize: 10,textAlign: TextAlign.right,
                                          color: AppColors.blueNormal),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
