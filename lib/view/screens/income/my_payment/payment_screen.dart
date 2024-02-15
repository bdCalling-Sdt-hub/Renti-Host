import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/view/screens/income/renti_fee_my_payment_controller/renti_fee_my_payment_controller.dart';
import 'package:renti_host/view/screens/income/renti_fee_my_payment_repo/renti_fee_my_payment_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/start_end_date/start_end_date.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

import '../../../../core/global/api_url_container.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(RentiFeeMyPaymentRepo(apiService: Get.find()));
    var controller = Get.put(
        RentiFeeMyControllerController(rentiFeeMyPaymentRepo: Get.find()));
    controller.feeOrPayment();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
    return GetBuilder<RentiFeeMyControllerController>(
      builder: (controller) {
        return SafeArea(
          top: true,
          child: Scaffold(
            backgroundColor: AppColors.whiteLight,
            appBar: CustomAppBar(
              appBarContent: CustomBack(
                text: 'My Payment'.tr,
                color: AppColors.blackNormal,
              ),
            ),
            body: controller.payment.isEmpty
                ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomImage(
                      imageSrc: AppIcons.dataNotFound,
                      size: 120,
                      imageType: ImageType.png),
                  const SizedBox(height: 8),
                  CustomText(
                      text: "No Data Found!".tr,
                      fontSize: 16,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis)
                ],
              ),
            )
                : SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: List.generate(
                  controller.payment.length,
                      (index) {
                    final isExpanded = expandedMap[index] ?? false;
                    String startDateString = "${controller.payment[index].income?.rentId?.startDate}";

                    String endDateString =
                        "${controller.payment[index].income?.rentId?.endDate}";
                    // Define a regular expression pattern to match the date part
                    RegExp datePattern = RegExp(r"(\d{4}-\d{2}-\d{2})");

                    // Use the regular expression to extract the date part
                    String formattedStartDate = datePattern.firstMatch(startDateString)?.group(0) ?? '';
                    String formattedEndDate = datePattern.firstMatch(endDateString)?.group(0) ?? '';

                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: ShapeDecoration(
                            color: AppColors.whiteLight,
                            shape: RoundedRectangleBorder(
                              side:
                              const BorderSide(width: 1, color: AppColors.blueLight),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: AppColors.shadowColor,
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                margin: const EdgeInsets.only(right: 8),
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider("${ApiUrlContainer.imageUrl}${controller.payment[index].income?.carId?.image?[0]}"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: CustomText(
                                            maxLines: 1,overflow: TextOverflow.ellipsis,
                                            text: "${controller.payment[index].income?.carId?.carModelName}",
                                            color: AppColors.blueNormal,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Flexible(
                                          child: CustomText(
                                            maxLines: 1,overflow: TextOverflow.ellipsis,
                                            text: "\$${controller.payment[index].myPayment}",
                                            textAlign: TextAlign.right,
                                            color: AppColors.blueNormal,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const CustomText(
                                            text: "Transition ID:",
                                            fontSize: 10,
                                            color: AppColors.whiteDarkActive,
                                            fontWeight: FontWeight.w400
                                        ),
                                        Flexible(
                                          child: CustomText(
                                              maxLines: 1,overflow: TextOverflow.ellipsis,
                                              text: " ${controller.payment[index].income?.paymentData?.balanceTransaction}",
                                              fontSize: 12
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const CustomText(
                                            text: "Car license no. :",
                                            fontSize: 10,
                                            color: AppColors.whiteDarkActive,
                                            fontWeight: FontWeight.w400
                                        ),
                                        Flexible(
                                          child: CustomText(
                                              maxLines: 1,overflow: TextOverflow.ellipsis,textAlign: TextAlign.start,
                                              text: " ${controller.payment[index].income?.carId?.carLicenseNumber}",
                                              fontSize: 12
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        //Transition ID
                                        Flexible(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              CustomText(
                                                  text: "Trip no: ".tr,
                                                  fontSize: 10,
                                                  color: AppColors.whiteDarkActive,
                                                  fontWeight: FontWeight.w400),
                                              Flexible(
                                                child: CustomText(
                                                    text: " ${controller.payment[index].income?.rentId?.rentTripNumber}",
                                                    maxLines: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),

                                        GestureDetector(
                                          onTap: () {
                                            onChanged(index);
                                          },
                                          child: Icon(isExpanded
                                              ? Icons.keyboard_arrow_up_rounded
                                              : Icons.keyboard_arrow_down_rounded,
                                              color: AppColors.blueNormal,
                                              size: 18,
                                              weight: 10),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        isExpanded
                            ? StartEndDate(startDate: formattedStartDate,endDate: formattedEndDate)
                            : const SizedBox(),
                        const SizedBox(height: 8)
                      ],
                    );
                  },
                ),
              ),
            )
          ),
        );
      },
    );
  }
}
