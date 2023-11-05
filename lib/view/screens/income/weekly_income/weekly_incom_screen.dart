import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
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
    controller.totalIncome();
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
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: CustomAppBar(
          appBarContent: CustomBack(
            text: 'Weekly Income'.tr,
            color: AppColors.blackNormal,
          ),
        ),
        body: GetBuilder<IncomeController>(
          builder: (controller) {
            return LayoutBuilder(
              builder: (context, constraint) {
                return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 20),
                  child: Column(
                    children: List.generate(controller.incomeResponseModel.weeklyIncomeList?.length ?? 0,
                      (index) {
                        return Container(
                          width: double.maxFinite,
                          margin: const EdgeInsets.only(bottom: 8),
                          padding: const EdgeInsets.only(left: 8, right: 16, top: 8, bottom: 8),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(AppImages.blueCar),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "${controller.incomeResponseModel.weeklyIncomeList?[index].carId?.carModelName}",
                                      color: AppColors.blueNormal,
                                      fontWeight: FontWeight.w700,
                                      bottom: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        //Transition ID
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Transition no: ".tr,
                                                style: GoogleFonts.poppins(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.whiteDarkHover,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "${controller.incomeResponseModel.weeklyIncomeList?[index].paymentData?.balanceTransaction}",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.blackNormal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const CustomText(
                                          text: '\$ 50',
                                          textAlign: TextAlign.right,
                                          color: AppColors.blueNormal,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    //Date Of review section
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Trip no: ".tr,
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.whiteDarkHover),
                                          ),
                                          TextSpan(
                                            text: "10",
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.blackNormal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            );
          }
        ),
      ),
    );
  }
}
