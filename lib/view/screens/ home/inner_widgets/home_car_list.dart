import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';
import 'package:renti_host/view/widgets/start_end_date/start_end_date.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

import '../../../../core/global/api_url_container.dart';

// ignore: must_be_immutable
class HomeCarList extends StatefulWidget {
  HomeCarList({super.key, required this.homeCarListModel});

  HomeCarListModel homeCarListModel;

  @override
  State<HomeCarList> createState() => _HomeCarListState();
}

class _HomeCarListState extends State<HomeCarList> {
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
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
           // physics: BouncingScrollPhysics(),
              itemCount:widget.homeCarListModel.cars!.length,
              itemBuilder: (context,index){
            print(widget.homeCarListModel.cars![index].isCarActive);
            final isExpanded = expandedMap[index] ?? false;
            String startDateString = "${widget.homeCarListModel.cars?[index].paymentId?.rentId?.startDate}";
            String endDateString = "${widget.homeCarListModel.cars?[index].paymentId?.rentId?.endDate}";
            // Define a regular expression pattern to match the date part
            RegExp datePattern = RegExp(r"(\d{4}-\d{2}-\d{2})");
          
            // Use the regular expression to extract the date part
            String formattedStartDate = datePattern.firstMatch(startDateString)?.group(0) ?? '';
            String formattedEndDate = datePattern.firstMatch(endDateString)?.group(0) ?? '';
          
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.carDetailsScreen, arguments: [widget.homeCarListModel, index]);
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
                              image: widget.homeCarListModel.cars?[index].image!=null && widget.homeCarListModel.cars![index].image!.isNotEmpty? DecorationImage(
                                  fit: BoxFit.fill,
                                  image: CachedNetworkImageProvider(
                                    "${ApiUrlContainer.imageUrl}${widget.homeCarListModel.cars?[index].image?[0]}",
                                  )):null),
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
                                          text: "${widget.homeCarListModel.cars?[index].carModelName}",
                                          maxLines: 1,overflow: TextOverflow.ellipsis,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.blueNormal,
                                          textAlign: TextAlign.start,
                                          right: 10),
                                    ),
                                    widget.homeCarListModel.cars![index].tripStatus == "Start"
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
                                        :widget.homeCarListModel.cars![index].isCarActive == "Pending" ? Container(
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
                                    )   :widget.homeCarListModel.cars![index].isCarActive == "Cancel" ? Container(
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
                                    ) :widget.homeCarListModel.cars![index].isCarActive == "Active" ? Container(
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
                                            "\$${widget.homeCarListModel.cars?[index].hourlyRate.toString()}",
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
                                    // widget.homeCarListModel.cars?[index].tripStatus == "Start"
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
      ]


     /* List.generate(

        widget.homeCarListModel.cars!.length,
        (index) {
          print(widget.homeCarListModel.cars![index].isCarActive);
          final isExpanded = expandedMap[index] ?? false;
          String startDateString = "${widget.homeCarListModel.cars?[index].paymentId?.rentId?.startDate}";
          String endDateString = "${widget.homeCarListModel.cars?[index].paymentId?.rentId?.endDate}";
          // Define a regular expression pattern to match the date part
          RegExp datePattern = RegExp(r"(\d{4}-\d{2}-\d{2})");

          // Use the regular expression to extract the date part
          String formattedStartDate = datePattern.firstMatch(startDateString)?.group(0) ?? '';
          String formattedEndDate = datePattern.firstMatch(endDateString)?.group(0) ?? '';
return Column(
  children: [
    GestureDetector(
      onTap: () {
        Get.toNamed(AppRoute.carDetailsScreen, arguments: [widget.homeCarListModel, index]);
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
                        "${ApiUrlContainer.imageUrl}${widget.homeCarListModel.cars?[index].image?[0]}",
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
                              text: "${widget.homeCarListModel.cars?[index].carModelName}",
                              maxLines: 1,overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w700,
                              color: AppColors.blueNormal,
                              textAlign: TextAlign.start,
                              right: 10),
                        ),
                        widget.homeCarListModel.cars![index].tripStatus == "Start"
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
                            :widget.homeCarListModel.cars![index].isCarActive == "Pending" ? Container(
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
                        )   :widget.homeCarListModel.cars![index].isCarActive == "Cancel" ? Container(
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
                        ) :widget.homeCarListModel.cars![index].isCarActive == "Active" ? Container(
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
                                "\$${widget.homeCarListModel.cars?[index].hourlyRate.toString()}",
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
                        widget.homeCarListModel.cars?[index].tripStatus == "Start"
                            ? GestureDetector(
                          onTap: () {
                            onChanged(index);
                          },
                          child: Icon(isExpanded ? Icons.keyboard_arrow_up_rounded
                              : Icons.keyboard_arrow_down_rounded,
                              color: AppColors.blueNormal,
                              size: 18,
                              weight: 10),
                        )
                            : const SizedBox()
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

        },
      ),*/


    );
  }
}
