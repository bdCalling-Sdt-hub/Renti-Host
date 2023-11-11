import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/income/income/income_controller/income_controller.dart';
import 'package:renti_host/view/screens/income/income/income_repo/income_repo.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class WeeklyIncomeScreen extends StatefulWidget {
  const WeeklyIncomeScreen({super.key});

  @override
  State<WeeklyIncomeScreen> createState() => _WeeklyIncomeScreenState();
}

class _WeeklyIncomeScreenState extends State<WeeklyIncomeScreen> {
  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(IncomeRepo(apiService: Get.find()));
    var controller = Get.put(IncomeController(incomeRepo: Get.find()));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.totalIncome();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: GetBuilder<IncomeController>(
        builder: (controller) {
          if (controller.isLoading) {
            const Center(child: CircularProgressIndicator());
          }
          return Scaffold(
            backgroundColor: AppColors.whiteLight,
            appBar: CustomAppBar(
              appBarContent: CustomBack(
                text: 'Weekly Income'.tr,
                color: AppColors.blackNormal,
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                children: List.generate(
                  controller.incomeResponseModel.weeklyIncomeList?.length ?? 0,
                  (index) {
                    return controller.incomeResponseModel.weeklyIncomeList?[index].carId != null
                        ? Container(
                            width: double.maxFinite,
                            margin: const EdgeInsets.only(bottom: 8),
                            padding: const EdgeInsets.only(
                                left: 8, right: 16, top: 8, bottom: 8),
                            decoration: BoxDecoration(
                              color: AppColors.whiteLight,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: AppColors.shadowColor,
                                  blurRadius: 10,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  margin: const EdgeInsets.only(right: 8),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: CachedNetworkImageProvider("${controller.incomeResponseModel.weeklyIncomeList?[index].carId?.image?[0]}"),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
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
                                              text: "${controller.incomeResponseModel.weeklyIncomeList?[index].carId?.carModelName}",
                                              color: AppColors.blueNormal,
                                              fontWeight: FontWeight.w700,
                                              bottom: 8,
                                            ),
                                          ),
                                          const SizedBox(width: 24),
                                          Flexible(
                                            child: CustomText(
                                              maxLines: 1,overflow: TextOverflow.ellipsis,
                                              text: "\$${controller.incomeResponseModel.weeklyIncomeList?[index].paymentData?.amount}",
                                              color: AppColors.blueNormal,
                                              fontWeight: FontWeight.w700,
                                              bottom: 8,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          //Transition ID
                                          const CustomText(
                                              text: "Transition ID:",
                                              fontSize: 10,
                                              color: AppColors.whiteDarkActive,
                                              right: 8,
                                              fontWeight: FontWeight.w400),
                                          Flexible(
                                            child: CustomText(
                                                text: "${controller.incomeResponseModel.weeklyIncomeList?[index].paymentData?.balanceTransaction}",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      //Date Of review section
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          //Transition ID
                                          CustomText(
                                              text: "Trip no: ".tr,
                                              fontSize: 10,
                                              color: AppColors.whiteDarkActive,
                                              right: 8,
                                              fontWeight: FontWeight.w400),
                                          Flexible(
                                            child: CustomText(
                                                text: "${controller.incomeResponseModel.weeklyIncomeList?[index].rentId?.rentTripNumber}" ,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        : const SizedBox();
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
