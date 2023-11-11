import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/income/renti_fee_my_payment_controller/renti_fee_my_payment_controller.dart';
import 'package:renti_host/view/screens/income/renti_fee_my_payment_repo/renti_fee_my_payment_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/start_end_date/start_end_date.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class RentFeeScreen extends StatefulWidget {
  const RentFeeScreen({super.key});

  @override
  State<RentFeeScreen> createState() => _RentFeeScreenState();
}

class _RentFeeScreenState extends State<RentFeeScreen> {
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
                text: "Renti Fee".tr,
                color: AppColors.blackNormal,
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 20),
              child: Column(
                children: List.generate(
                  controller.rentiFeeMyPaymentModel.userPaymentList?.length ?? 0,
                  (index) {
                    final isExpanded = expandedMap[index] ?? false;
                    String startDateString = "${controller.rentiFeeMyPaymentModel.userPaymentList?[index].income?.rentId?.startDate}";

                    String endDateString =
                        "${controller.rentiFeeMyPaymentModel.userPaymentList?[index].income?.rentId?.endDate}";
                    // Define a regular expression pattern to match the date part
                    RegExp datePattern = RegExp(r"(\d{4}-\d{2}-\d{2})");

                    // Use the regular expression to extract the date part
                    String formattedStartDate = datePattern.firstMatch(startDateString)?.group(0) ?? '';
                    String formattedEndDate = datePattern.firstMatch(endDateString)?.group(0) ?? '';
                    return controller.rentiFeeMyPaymentModel.userPaymentList?[index].income?.carId == null
                        ? Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 8, right: 16, top: 8, bottom: 8),
                                decoration: ShapeDecoration(
                                  color: AppColors.whiteLight,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.50,
                                        color: AppColors.blueLight),
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
                                          image: CachedNetworkImageProvider("${controller.rentiFeeMyPaymentModel.userPaymentList?[index].income?.carId?.image?[0]}"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4)
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
                                                  text: "${controller.rentiFeeMyPaymentModel.userPaymentList?[index].income?.carId?.carModelName}",
                                                  color: AppColors.blueNormal,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              const SizedBox(width: 24),
                                              Flexible(
                                                child: CustomText(
                                                  maxLines: 1,overflow: TextOverflow.ellipsis,
                                                  text: "\$${controller.rentiFeeMyPaymentModel.userPaymentList?[index].rentiFee}",
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
                                                  text: " ${controller.rentiFeeMyPaymentModel.userPaymentList?[index].income?.paymentData?.balanceTransaction}",
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
                                                          text: " ${controller.rentiFeeMyPaymentModel.userPaymentList?[index].income?.rentId?.rentTripNumber}",
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
                                  ? StartEndDate(
                                      startDate: formattedStartDate,
                                      endDate: formattedEndDate)
                                  : const SizedBox(),
                              const SizedBox(height: 8)
                            ],
                          )
                        : const SizedBox();
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
