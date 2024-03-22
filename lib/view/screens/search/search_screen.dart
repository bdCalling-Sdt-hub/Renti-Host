import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/%20home/home_controller/home_carlist_controller.dart';
import 'package:renti_host/view/screens/%20home/inner_widgets/home_car_list.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';

import '../ home/home_model/home_carlist_model.dart';
import '../../../core/global/api_url_container.dart';
import '../../../core/route/app_route.dart';
import '../../widgets/start_end_date/start_end_date.dart';
import '../../widgets/text/custom_text.dart';



class SearchScreen extends StatefulWidget {
    SearchScreen({super.key,});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

 final controller = Get.put(HomeCarListController(homeCarListRepo: Get.find()));

    Map<int, bool> expandedMap = {};

    void onChanged(int index) {
      setState(
            () {
          if (expandedMap.containsKey(index)) {
            expandedMap[index] = !expandedMap[index]!;
          } else {
            expandedMap[index] = true;
          }
        },
      );
    }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCarListController>(

      builder: (controller) {
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
                    navigator!.pop();
                  },
                  text: "Search".tr,
                  color: AppColors.blackNormal),
            ),
            body: Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: controller.searchController,
                    onChanged: (value) {
                         controller.homeCarList(search: "?search=$value");
                    },
                    cursorColor: AppColors.blackNormal,
                    showCursor: true,
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackNormal),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search_outlined,
                          size: 20, color: AppColors.whiteNormalActive),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.searchController.clear();
                          controller.homeCarList(search: "");
                        },
                        child: const Icon(
                          Icons.cancel_outlined,
                          size: 15,
                          color: AppColors.blueNormal,
                        ),
                      ),
                      hintText: "Find Car Model".tr,
                      hintStyle: const TextStyle(
                          color: AppColors.whiteNormalActive,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: AppColors.whiteNormalActive, width: 1)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: AppColors.whiteNormalActive, width: 1),
                      ),
                    ),
                  ),

///==========================  Car list section ==============================///
                  Expanded(
                    child: ListView.builder(
                      // physics: BouncingScrollPhysics(),

                      scrollDirection: Axis.vertical,

                        itemCount:controller.homeCarListModel.cars?.length,
                        itemBuilder: (context,index){

                          final isExpanded = expandedMap[index] ?? false;
                          String startDateString = "${controller.homeCarListModel.cars?[index].paymentId?.rentId?.startDate}";
                          String endDateString = "${controller.homeCarListModel.cars?[index].paymentId?.rentId?.endDate}";
                          // Define a regular expression pattern to match the date part
                          RegExp datePattern = RegExp(r"(\d{4}-\d{2}-\d{2})");

                          // Use the regular expression to extract the date part
                          String formattedStartDate = datePattern.firstMatch(startDateString)?.group(0) ?? '';
                          String formattedEndDate = datePattern.firstMatch(endDateString)?.group(0) ?? '';

                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoute.carDetailsScreen, arguments: [controller.homeCarListModel, index]);
                                },
                                child: Container(
                                  height: 100,
                                  margin: const EdgeInsets.only(top: 16.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [

                                      ///===================== Home car List =======================>

                                      Container(
                                        width: 100,
                                        padding: const EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 8),
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8)),
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: CachedNetworkImageProvider(
                                                  "${ApiUrlContainer.imageUrl}${controller.homeCarListModel.cars?[index].image?[0]}",
                                                ))),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomRight: Radius.circular(8),
                                            ),
                                            border: Border.all(
                                              color: AppColors.blueLight,
                                              width: 1.0,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: CustomText(
                                                        text: "${controller.homeCarListModel.cars?[index].carModelName}",
                                                        maxLines: 1,overflow: TextOverflow.ellipsis,
                                                        fontWeight: FontWeight.w700,
                                                        color: AppColors.blueNormal,
                                                        textAlign: TextAlign.start,
                                                        right: 10),
                                                  ),
                                                  controller.homeCarListModel.cars?[index].tripStatus == "Start"
                                                      ? Container(
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsetsDirectional
                                                        .symmetric(
                                                        vertical: 4, horizontal: 12),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.redLight,
                                                      borderRadius:
                                                      BorderRadius.circular(4),
                                                    ),
                                                    child: CustomText(
                                                        text: "Reserved".tr,
                                                        fontSize: 10,
                                                        color: AppColors.redNormal),
                                                  )
                                                      :controller.homeCarListModel.cars?[index].isCarActive == "Pending" ? Container(
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsetsDirectional
                                                        .symmetric(
                                                        vertical: 4, horizontal: 12),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.greenLight,
                                                      borderRadius:
                                                      BorderRadius.circular(4),
                                                    ),
                                                    child: CustomText(
                                                        text: "Pending".tr,
                                                        fontSize: 10,
                                                        color: Colors.amberAccent
                                                    ),
                                                  )   :controller.homeCarListModel.cars?[index].isCarActive == "Cancel" ? Container(
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsetsDirectional
                                                        .symmetric(
                                                        vertical: 4, horizontal: 12),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.greenLight,
                                                      borderRadius:
                                                      BorderRadius.circular(4),
                                                    ),
                                                    child: CustomText(
                                                      text: "Cancel".tr,
                                                      fontSize: 10,
                                                      color: Colors.red,
                                                    ),
                                                  ) :controller.homeCarListModel.cars?[index].isCarActive == "Active" ? Container(
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsetsDirectional
                                                        .symmetric(
                                                        vertical: 4, horizontal: 12),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.greenLight,
                                                      borderRadius:
                                                      BorderRadius.circular(4),
                                                    ),
                                                    child: CustomText(
                                                      text: "Active".tr,
                                                      fontSize: 10,
                                                      color: AppColors.greenNormal,
                                                    ),
                                                  ) :  Container(
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsetsDirectional
                                                        .symmetric(
                                                        vertical: 4, horizontal: 12),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.greenLight,
                                                      borderRadius:
                                                      BorderRadius.circular(4),
                                                    ),
                                                    child: CustomText(
                                                      text: "DeActive".tr,
                                                      fontSize: 10,
                                                      color: Colors.orange,
                                                    ),
                                                  ) ,
                                                ],
                                              ),
                                              const SizedBox(height: 16),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      CustomText(
                                                          text:
                                                          "\$${controller.homeCarListModel.cars?[index].hourlyRate.toString()}",
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w500,
                                                          color: AppColors.whiteDarker),
                                                      CustomText(
                                                          text: "/day".tr,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w500,
                                                          color: AppColors.whiteDarker),
                                                    ],
                                                  ),
                                                  // controller.homeCarListModel.cars?[index].tripStatus == "Start"
                                                  //     ? GestureDetector(
                                                  //   onTap: () {
                                                  //     onChanged(index);
                                                  //   },
                                                  //   child: Icon(isExpanded ? Icons.keyboard_arrow_up_rounded
                                                  //       : Icons.keyboard_arrow_down_rounded,
                                                  //       color: AppColors.blueNormal,
                                                  //       size: 18,
                                                  //       weight: 10),
                                                  // )
                                                  //     : const SizedBox()
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // dataList[index]["status"] == "Reserved" && isExpanded
                              //     ? StartEndDate()
                              //     : const SizedBox(),


                              isExpanded ? StartEndDate(startDate: formattedStartDate,endDate: formattedEndDate,) : const SizedBox(),
                              const SizedBox(height: 8)
                            ],
                          );
                        }),
                  )

                //  HomeCarList(controller.homeCarListModel: controller.controller.homeCarListModel)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
